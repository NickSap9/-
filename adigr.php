<?php
session_start();
?><!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'> 
 
<html xmlns='http://www.w3.org/1999/xhtml'> 
 
<head> 
<meta http-equiv='content-type' content='text/html; charset=windows-1251' /> 

<title> </title> 

 	 <link rel="stylesheet" type="text/css" href="js/jquery-ui-1.7.2.custom.css">
	  <link rel="stylesheet" type="text/css" href="css/style.css">
	  	  <link rel="stylesheet" type="text/css" href="css/index.css">
		  <link rel="stylesheet" href="css/jquery.treeview.css" />
	  	  	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
	<script type="text/javascript" src="js/ui.datepicker-uk.js"></script>
	 <script type="text/javascript" src="js/jquery.validate.min.js"></script>
	 <script type="text/javascript" src="js/forma.js"></script>
	 <script src="js/jquery.treeview.js" type="text/javascript"></script>
	
	 <script type="text/javascript">
		$(function() {
			$("#tree").treeview({
				collapsed: false,
				animated: "medium",
				control:"#sidetreecontrol",
				persist: "location"
			});
		})
			</script>
</head> 
 <body> 
  <div id='head'> <h2> 
  <?php include "conf/name.php"; 
?> </h2>
  </div>
   <div id='content'> 
<div class="text-left1"> 
<?php include "menu.php"; ?> 
</div>
<div class="text-right">
<p class="pp">
Записаться на тестовую работу <br>
</p>
<?php
require "conf/dbconnect.php";
$res_id1=mysql_query("SELECT idklient, namekl FROM `klient`")
or die(mysql_error());
$klient=mysql_num_rows($res_id1);
?>

<?php 
$sotr=$_SESSION['sotr'];

require "conf/dbconnect.php";
$d=date("Y-m-d H:i");
$kolvo=mysql_query("SELECT count(idchet)
FROM chet, sotr, game where idsotr=$sotr and datechet>'$d' and idsotrg=$sotr and idplg=idchet and gamestat=0 and rez=0");
while($kolvo_mas=mysql_fetch_row($kolvo))
{
$chislo=$kolvo_mas[0];
}
if ($chislo>0)
{
echo "<br> <span class='log1'> Найдено $chislo записей(и)  </span> ";
$res=mysql_query("SELECT namekl, imagekl, nomer, nameigra, datechet, idchet, timeigra, idplg, idgame
FROM chet, klient, sotr, game where idsotr=$sotr and datechet>'$d' and $sotr=idsotrg and idplg=idchet and idklientchet=idklient and gamestat=0 and rez=0");
while($res_id=mysql_fetch_row($res))
{
$klvp=$res_id[5];
$kolvovop=mysql_query("SELECT count(idv) 
FROM voprosi where idigra=$klvp");
while($res_id1=mysql_fetch_row($kolvovop))
{
$klvp1=$res_id1[0];
}

$a=$a+1;
echo " <center> <table> <tr>
<td width='45' class='tz'> <b>  $a </b></td>
<td width='45' class=''> <img src='image/$res_id[1]' width='40' height='40' value='$res_id[0]'> </td>
<td width='50' class='tz'> $res_id[2] </td>
<td width='150' class='tz'> $res_id[3] </td>
<td width='100' class='tz'> $res_id[4] </td>
<td width='100' class='tz'> $res_id[6] </td>
<td width='100' class='tz'> <b> $klvp1 </b> вопросов(а) </td>

<td width='45' class=''><form   method='post' name='zapis' action='udal.php'>
<INPUT TYPE='hidden' NAME='zapis' VALUE='$res_id[8]'>
<input type='image' src='image/add.png' TITLE='Записаться' WIDTH='45' HEIGHT='45' >
</form>
</td>
</tr> </table>\n";
}
}
else 
{
echo "<span class='log'> Записей не найдено </span> ";
}


?>





</div>
<br>
<br>
</body> 
 </html>