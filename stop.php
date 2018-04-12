<?php
require_once './Process.php';
$process = new Process();
$Pid = $_GET['pid'];
$process->setPid($Pid);
if ($process->status()){
    $process->stop();
}
echo 'Process stopped';
