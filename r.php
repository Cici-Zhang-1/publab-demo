<?php
/*require_once 'Process.php';
$process = new Process('top');
$Pid = $process->getPid();
echo $Pid;*/

$Return = array(
        'code' => 0,
        'message' => '',
        'contents' => array(
                'uri' => ''
        )
);
$R = (isset($_GET['r']) && $_GET['r'] != '') ? $_GET['r'] : '';
if ($R == false) {
    $Return['code'] = 1;
    $Return['message'] = '请选中';
    exit(json_encode($Return));
} elseif ($R == 'bar') {
    $Script = 'bar.R';
    $Data = array(
            $_GET['one'],
        $_GET['two'],
        $_GET['three'],
        $_GET['four'],
        $_GET['five']
    );
    $Data = implode(' ', $Data);
} elseif ($R == 'box') {
    $Script = 'box.R';
    $Data = array(
            $_GET['data'],
            $_GET['one'],
            $_GET['two'],
            '"' . $_GET['xlab'] . '"',
        '"' . $_GET['ylab'] . '"',
        '"' . $_GET['main'] . '"'
    );
    $Data = implode(' ', $Data);
} elseif ($R == 'point') {
    $Script = 'point.R';
    $Data = array();
    if (isset($_GET['linear_line'])) {
        array_push($Data, 1);
    } else {
        array_push($Data, 0);
    }
    if (isset($_GET['smooth_curve'])) {
        array_push($Data, 1);
    } else {
        array_push($Data, 0);
    }
    $Data = implode(' ', $Data);
}
exec("rscript ./r/" . $Script . ' ' . $Data . " 2>test", $Exe);
$Name = array_pop($Exe);
preg_match('/.*\"(.*)\"/', $Name, $Matches);
$Name = $Matches[1];
$Return['contents']['uri'] = $Name;

exit(json_encode($Return));
