<?php
$host="localhost";
$user="root";
$pass="ПАРОЛЬ_ОТ_БД"; //установленный вами пароль
$db_name="shop";

$link=mysql_connect($host,$user,$pass);
mysql_select_db($db_name,$link);

mysql_query("SET NAMES 'utf8'"); 
mysql_query("SET CHARACTER SET 'utf8'");
mysql_query("SET SESSION collation_connection = 'utf8_general_ci'");
?>