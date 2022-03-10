<?php
session_start();
?>
<?php 
$sotr=$_SESSION['sotr'];
require "conf/dbconnect.php";
$d=date("Y-m-d H:i");
if(isset($_POST['play']))
{
$play=$_POST['play'];
$_SESSION['play']=$play;
$kolvovop1=mysql_query("SELECT count(idv)
FROM voprosi where idigra=$play");
while($kolvo_mas1=mysql_fetch_row($kolvovop1))
{
$chet=$kolvo_mas1[0];
}
$a=0;
$kolvovop=mysql_query("SELECT idv
FROM voprosi where idigra=$play");
while($kolvo_mas=mysql_fetch_row($kolvovop))
{
$vop=$kolvo_mas[0];
$query1=mysql_query("insert into results (`idigres`, `idplayerres`, vopres) 
values ($play, $sotr, $vop)");
$a=$a+1;
if ($chet=$a)
{
Header ("Location: play1.php");
}
}
}
?>

<br> 



$kolvo=mysql_query("SELECT count(idchet)
FROM chet, sotr, game where idsotr=$sotr and datechet>'$d' and idsotrg=$sotr and idplg=idchet");
while($kolvo_mas=mysql_fetch_row($kolvo))
{
$chislo=$kolvo_mas[0];
}
if ($chislo>0)
{
echo "<br> <span class='log1'> Найдено $chislo записей(и)  </span> ";
$res=mysql_query("SELECT namekl, imagekl, nomer, nameigra, datechet, idchet, timeigra
FROM chet, klient, sotr, game where idsotr=$sotr and datechet>'$d' and $sotr=idsotrg and idplg=idchet and idklientchet=idklient");
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
<td width='45' class='tz'> <b> $a </b></td>
<td width='45' class=''> <img src='image/$res_id[1]' width='40' height='40' value='$res_id[0]'> </td>
<td width='50' class='tz'> $res_id[2] </td>
<td width='150' class='tz'> $res_id[3] </td>
<td width='100' class='tz'> $res_id[4] </td>
<td width='100' class='tz'> $res_id[6] </td>
<td width='100' class='tz'> <b> $klvp1 </b> вопросов(а) </td>
<!--<td width='45' class=''><form   method='post' name='voprosi' action='voprosi.php'>
<INPUT TYPE='hidden' NAME='voprosi' VALUE='$res_id[5]'>
<input type='image' src='image/vopros.png' TITLE='Вопросы' WIDTH='30' HEIGHT='30' >
</form>
</td> -->
<td width='45' class=''><form   method='post' name='play' action='play.php'>
<INPUT TYPE='hidden' NAME='play' VALUE='$res_id[5]'>
<input type='image' src='image/start.png' TITLE='Начать игру' WIDTH='45' HEIGHT='45' >
</form>
</td>
</tr> </table>\n";
}
}
else 
{
echo "<span class='log'> Записей не найдено </span> ";
}


</div>
<br>
<br>
</body> 
 </html>