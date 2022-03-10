<?php session_start();
?><!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'> 
 
<html xmlns='http://www.w3.org/1999/xhtml'> 
 
<head> 
<meta http-equiv='content-type' content='text/html; charset=windows-1251' /> 

<title>
</title> 

 	 <link rel="stylesheet" type="text/css" href="js/jquery-ui-1.7.2.custom.css">
	  <link rel="stylesheet" type="text/css" href="css/style.css">
	   <link rel="stylesheet" type="text/css" href="css/index.css">
	  	  	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
	<script type="text/javascript" src="js/ui.datepicker-uk.js"></script>
	 <script type="text/javascript" src="js/jquery.validate.min.js"></script>
	 <script type="text/javascript" src="js/forma1.js"></script>
</head> 
 
<body> 
   
<?php
require "conf/dbconnect.php";
$res_id1=mysql_query("SELECT idklient, namekl FROM `klient`")
or die(mysql_error());
$klient=mysql_num_rows($res_id1);

?>
    <div id='content'> 
		<div id='content1'>
		<!-- вот здесь вся инфа--> 
<?php
require "conf/dbconnect.php";
if(isset($_POST['reg']))
{
$query1=mysql_query("insert into sotr (name,  login, parol, surname, datebor, gorod, scool,klass ) 
values ('".$_POST['name']."','".$_POST['login']."','".$_POST['parol']."','".$_POST['ima']."',
'".$_POST['date']."', '".$_POST['gorod']."',
'".$_POST['scool']."', '".$_POST['klass']."')");
$nomer=mysql_query("SELECT max(idsotr )
FROM sotr");
while($nomer_mas1=mysql_fetch_row($nomer))
{
$sotrposnew=$nomer_mas1[0];
}


$resuser=mysql_query("SELECT idchet 
FROM chet ");
while($resusermas=mysql_fetch_row($resuser))
{
$resusermasmas=$resusermas[0];
$query2=mysql_query("insert into game (`idsotrg`, `idplg`, rez) 
values ($sotrposnew, $resusermasmas, 0)");
}
$igrr=$_POST['igri']; 
echo $igrr;
$query9=mysql_query("update game set rez=1 where idsotrg=$sotrposnew  and idplg=$igrr");
if($igrr>0 )
{
echo "<p class='pp'>Спасибо, регистрация успешно завершена <br> <a href='index.php'>Войти в личный кабинет </a></p>";
}
else
{
echo "<p class='log'></p>Не получилось</p>";   
}
}                                        
?> 		

<?php
require "conf/dbconnect.php";
if(isset($_POST['regsud']))
{
$query1=mysql_query("insert into sotr (name,  login, parol, surname, datebor, gorod, scool,klass, stud ) 
values ('".$_POST['name']."','".$_POST['login']."','".$_POST['parol']."','".$_POST['ima']."',
'".$_POST['date']."', '".$_POST['gorod']."',
'".$_POST['scool']."', '".$_POST['klass']."', 1)");
$nomer=mysql_query("SELECT max(idsotr )
FROM sotr");
while($nomer_mas1=mysql_fetch_row($nomer))
{
$sotrposnew=$nomer_mas1[0];
}


$resuser=mysql_query("SELECT idchet 
FROM chet ");
while($resusermas=mysql_fetch_row($resuser))
{
$resusermasmas=$resusermas[0];
$query2=mysql_query("insert into game (`idsotrg`, `idplg`, rez) 
values ($sotrposnew, $resusermasmas, 0)");
}
$igrr=$_POST['igri']; 
echo $igrr;
$query9=mysql_query("update game set rez=1 where idsotrg=$sotrposnew  and idplg=$igrr");
if($igrr>0 )
{
echo "<p class='pp'>Спасибо, регистрация успешно завершена <br> <a href='index.php'>Войти в личный кабинет </a></p>";
}
else
{
echo "<p class='log'></p>Не получилось</p>";   
}
}                                        
?> 	


   </div> 
            </div> 
			<br>
<div id='main' class='noifixpng'> 
  
            </div> 
<br>
</body> 
 </html>