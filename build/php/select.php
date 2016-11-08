<?php 
	session_start();
	require 'load.php';

	header("Content-type:application/json,charset=utf-8");
	//require 'filter.php';
	$newstype= $_POST['newsid'];//获取点击的内容
	$sql ="select * from news";
	$result ="SELECT `newsid`, `newstype`, `newstitle`, `newsimg`, `newscontent`, `newstime` FROM `news` WHERE `newstype`='$newstype'";
	$printresult = mysql_query($result,$con); //执行查询
	$arr=array();
	if(!$printresult){
		die("Valid result!");
	}else{
		//循环从数据集取出数据
	while( $row = mysql_fetch_array($printresult) ){
		array_push($arr,array(
			"newsid"=>urldecode($row['newsid']),
			"newstype"=>urldecode($row['newstype']),
			"newstitle"=>urldecode($row['newstitle']),
			"newsimg"=>$row['newsimg'],
			"newscontent"=>urldecode($row['newscontent']),
			"newstime"=>urldecode($row['newstime'])
			));
		}
		echo (json_encode($arr));
	}
	// while( $row = mysql_fetch_array($printresult) ){
	// 	array_push($arr,array(
	// 		"newsid"=>urlencode($row['newsid']),
	// 		"newstype"=>urlencode($row['newstype']),
	// 		"newstitle"=>urlencode($row['newstitle']),
	// 		"newsimg"=>$row['newsimg'],
	// 		"newscontent"=>urlencode($row['newscontent']),
	// 		"newstime"=>urlencode($row['newstime'])
	// 		));
	// 	}
	// 	echo urldecode(json_encode($arr));
	// }
	
?>
