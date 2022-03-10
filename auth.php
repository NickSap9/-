<?php
session_start();
require "conf/dbconnect.php";
if(isset($_POST['parol']))
{
$res=mysql_query("SELECT idsotr FROM sotr WHERE login='".$_POST['login']."' AND parol='".$_POST['password']."' AND udal=0");
$kolvo=mysql_num_rows($res);
if($kolvo>0)
{
while($prise_mas=mysql_fetch_row($res))
{
$_SESSION['sotr']="$prise_mas[0]";
Header ("Location: igri.php");
}
}
else
{    //такого пользователя нет
echo "<center><br><br>Введены неверные логин или пароль<br><br> <span><a href='index.php'>Попробуйте еще раз</a></span> <br> или обратитесь к администратору системы<br>
";
}
}
?>
