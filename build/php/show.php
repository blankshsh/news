<?php
	require 'filter.php';
	require 'load.php';
	header("Content-type:application/json,charset=utf-8");
	
	//SQL语句
	//查询
	$sql="select * from news";
	$arr=array();
	$result= mysql_query($sql,$con);
	while( $row = mysql_fetch_array($result) ){
		array_push($arr,array(
			"newsid"=> htmlspecialchars_decode($row['newsid']),
			"newstitle"=> htmlspecialchars_decode($row['newstitle']),
			"newsimg"=>$row['newsimg'],
			"newscontent"=> htmlspecialchars_decode($row['newscontent']),
			"newstime"=> htmlspecialchars_decode($row['newstime']),
			"newstype"=> htmlspecialchars_decode($row['newstype']),
			"token" => ($_SESSION['token'])
			));
		}
		echo (json_encode($arr));
	// while( $row = mysql_fetch_array($result) ){
	// 	array_push($arr,array(
	// 			"newsid"=>$row['newsid'],
	// 			"newstype"=>$row['newstype'],
	// 			"newstitle"=>$row['newstitle'],
	// 			"newsimg"=>$row['newsimg'],
	// 			"newscontent"=>$row['newscontent'],
	// 			"newstime"=>$row['newstime']
	// 		));
	// 	}

		//$arrall = array_merge($arr_recommend, $arr_Peoplenews,$arr_localnews);//合并
		// echo (json_encode($arr_Peoplenews));
		// echo (json_encode($arr_localnews));
?>
