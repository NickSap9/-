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
		   <link rel="stylesheet" href="assets/countdown/jquery.countdown.css" />
	  	  	<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
	<script type="text/javascript" src="js/ui.datepicker-uk.js"></script>
	 <script type="text/javascript" src="js/jquery.validate.min.js"></script>
	 <script type="text/javascript" src="js/forma.js"></script>
	 <script src="js/jquery.treeview.js" type="text/javascript"></script>
	<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script src="assets/countdown/jquery.countdown.js"></script>
		<script src="assets/js/script.js"></script>
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
  <br>
</p>

<?php 
$play=$_SESSION['play'];

$res=mysql_query("SELECT namekl, imagekl, nomer, nameigra, datechet, idchet, timeigra
FROM chet, klient where idklient=idklientchet and idchet=$play");
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
<td width='150' class=''> <img src='image/$res_id[1]' width='40' height='40' value='$res_id[0]'> <br> $res_id[0] </td>
<td width='50' class='tz'> $res_id[2] </td>
<td width='150' class='tz'> $res_id[3] </td>
<td width='100' class='tz'> $res_id[4] </td>
<td width='100' class='tz'> $res_id[6] </td>
<td width='100' class='tz'> <b> $klvp1 </b> вопросов(а) </td>
</tr> </table>\n";
}
?>

<?php 
$play=$_SESSION['play'];
$sotr=$_SESSION['sotr'];
$raz=mysql_query("SELECT count(idres) from results where idigres=$play  and idplayerres=$sotr and statres=0");
while($raz_id=mysql_fetch_row($raz))
{
$raz1=$raz_id[0];
if ($raz1>0)
{
echo "<div id='countdown'></div>";
$vopros=mysql_query("SELECT vopros, idres from results, voprosi where idv=vopres and idigres=$play  and idplayerres=$sotr and statres=0 limit 1");
while($vopros_id=mysql_fetch_row($vopros))
{
$_SESSION['kodvop']=$vopros_id[1];
echo " <center> <table> <tr>
<td width='450' class='pp'> Вопрос  </td> </tr>
<tr> 
<tr>
<td width='450' class='tz'> $vopros_id[0]  </td> </tr>
<tr> 
<tr>
<td width='450' class='pp'> Введите ответ </td> </tr>
<tr> 
<td width='' class='tz'> <form   method='post' action='udal.php'>
<textarea rows='6' cols='75' name='otvet' > </textarea>
 </td> </tr> 
 <tr> 
<td width='' class=''>
<input type='submit' value='Вперед!' name='play' class='button blue'><br>
      </form>
</td>
</tr> </table>\n";

}
}
else 
{
$otvet1=mysql_query("update game set gamestat=1 where idsotrg=$sotr and idplg=$play");
echo "<p class='pp'> Работа закончена, спасибо за участие</p> ";
}
}

?>


<br> 




</div>
<br>
<br>
</body> 
 </html>