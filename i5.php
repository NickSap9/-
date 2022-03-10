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
Типы игр <br>
</p>


<?php 
require "conf/dbconnect.php";

$res=mysql_query("SELECT namekl, imagekl, opisigra
FROM klient where idklient=5");
while($res_id=mysql_fetch_row($res))
{
$a=$a+1;
echo " 
<div id='accordion'>
    <h3 class='head'>
<center> <table> <tr>
<td width='45' class='tz'> <b> $a </b></td>
<td width='45' class=''> <img src='image/$res_id[1]' width='40' height='40' value='$res_id[0]'> </td>
<td width='550' class='tz'> $res_id[0] </td>
</tr> </table>\n
</h3>
    <div class='block kvit'>$res_id[2]</div>
    
</div>
";
}

?>

</div>
<br>
<br>
</body> 
 </html>