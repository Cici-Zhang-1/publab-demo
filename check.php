<?php
require_once './Process.php';
$process = new Process();
$Pid = $_GET['pid'];
$process->setPid($Pid);
if ($process->status()){
    echo "The process is currently running";
}else{
    echo "The process is not running.";
}
