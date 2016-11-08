<?php
	session_start();
	require 'load.php';
	//定义数值
	$newstype =htmlspecialchars(addslashes($_POST['newstype']));
	$newsid=htmlspecialchars(addslashes($_POST['newsid']));
	$newstitle=htmlspecialchars(addslashes($_POST['newstitle']));
	$newsimg=htmlspecialchars(addslashes($_POST['newsimg']));
	$newscontent=htmlspecialchars(addslashes($_POST['newscontent']));
	$newstime=htmlspecialchars(addslashes($_POST['newstime']));
	// echo $_POST['token'];
	$sql ="select * from news";
	if ($_SERVER['REQUEST_METHOD'] == 'POST' and (! isset($_POST['token']) || $_POST['token'] == $_SESSION['token'])) {
		$result="UPDATE `news` SET `newstype`='$newstype',`newstitle`='$newstitle',`newsimg`='$newsimg',`newscontent`='$newscontent',`newstime`='$newstime' WHERE newsid=$newsid";
		$updateresult=mysql_query($result,$con);
			if(!$updateresult){
				die("修改失败");
			}else{
				echo 'Success';
			}
	} else {
		echo 'csrferror';
		die ();
	}

?>
