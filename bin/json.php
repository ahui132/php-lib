#!/usr/bin/php
<?php
$json = file_get_contents('php://stdin');
$a =json_decode($json, true);
if($a){
	if(isset($argv[1])){
		var_dump($a[$argv[1]]);
	}else
		var_dump($a);
}else{
	echo $json;
}
