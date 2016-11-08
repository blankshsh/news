<?php 
	session_start();
	require 'load.php';

	$newsid = $_POST['newsid'];
	$sql ="select * from news"; //SQL语句

	if ($_SERVER['REQUEST_METHOD'] == 'POST' and (! isset($_POST['token']) || $_POST['token'] == $_SESSION['token'])) {
			$result ="DELETE FROM `news` WHERE newsid=$newsid";//
			$printresult = mysql_query($result,$con); //执行查询
				if(!$printresult){
						die("Valid result!");
					}else{
						echo $newsid;
				}
		}else {
			echo "csrferror";
	}
	
?>