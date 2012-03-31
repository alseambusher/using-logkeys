<?
	//upload this file to your website and change the username,password and the db name
	$connect=mysql_connect("localhost","root","alse");
	mysql_select_db("log");
	mysql_query("insert into log_table (user,log) values('".$_GET['user']."','".$_GET['data']."')");
?>
