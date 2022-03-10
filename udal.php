<?php 
		session_start();
?>
<?php 
require "conf/dbconnect.php";
if(isset($_POST['udal'])) 
{
$udal=$_POST['udal'];
$res13="update sotr set udal=1 where idsotr='$udal'";
if(mysql_query($res13))
{
Header ("Location: man.php");
} 
}
if(isset($_POST['udalvender'])) 
{
$udal1=$_POST['udalvender'];
$res14="update vender set udalv=1 where idv='$udal1'";
if(mysql_query($res14))
{
Header ("Location: sprav1.php");
} 
}
if(isset($_POST['udalobor'])) 
{
$udal2=$_POST['udalobor'];
$res15="update obor set udalo=1 where ido='$udal2'";
if(mysql_query($res15))
{
Header ("Location: sprav3.php");
} 
}
if(isset($_POST['udalgar'])) 
{
$udal3=$_POST['udalgar'];
$res16="update garant set udalg=1 where idg='$udal3'";
if(mysql_query($res16))
{
Header ("Location: sprav4.php");
} 
}

if(isset($_POST['person'])) 
{
$udal14=$_POST['person'];
$res17="update person set udalp=1 where idper='$udal14'";
if(mysql_query($res17))
{
Header ("Location: person.php");
} 
}

if(isset($_POST['udalobor'])) 
{
$udal5=$_POST['udalobor'];
$res19="update obor set udalo=1 where ido='$udal5'";
if(mysql_query($res19))
{
Header ("Location: tipi.php");
} 
}
if(isset($_POST['udalobororg'])) 
{
$udaludalobororg=$_POST['udalobororg'];
$res109="update obororg set udalo=1 where ido='$udaludalobororg'";
if(mysql_query($res109))
{
Header ("Location: tipiorg.php");
} 
}
if(isset($_POST['udalzakr'])) 
{
$udal6=$_POST['udalzakr'];
$res20="delete from zakr where idzakr='$udal6'";
if(mysql_query($res20))
{
Header ("Location: zakr.php");
} 
}

if(isset($_POST['ok1'])) 
{
Header ("Location: prod.php");
}

if(isset($_POST['ok2'])) 
{
Header ("Location: zakr.php");
}
if(isset($_POST['ok'])) 
{
Header ("Location: zakrorg.php");
}
if(isset($_POST['udalzakrorg'])) 
{
$udal9=$_POST['udalzakrorg'];
$res23="delete from zakrorg where idzakorg='$udal9'";
$res24=mysql_query("select IDTECH from zakrorg where idzakorg='$udal9'");
while($up=mysql_fetch_row($res24))
{
$update=$up[0];
}
$update11="update zakr set spis=0 where idzakr='$update'";
if(mysql_query($res23) and mysql_query($update11))
{
Header ("Location: zakrorg.php");
}
}

if(isset($_POST['closezakr'])) 
{
$date2=date("Y-m-d G:i:s");
$udal25=$_POST['closezakr'];
$res25="update zakrorg set statusZ=0, dateclose='$date2' where idzakorg='$udal25'";
$res27=mysql_query("select IDTECH from zakrorg where idzakorg='$udal25'");
while($up1=mysql_fetch_row($res27))
{
$update1=$up1[0];
}
$update111="update zakr set spis=0 where idzakr='$update1'";
if(mysql_query($res25) and mysql_query($update111) )
{
Header ("Location: zakrorgSPIS.php");
} 
}
if(isset($_POST['spis'])) 
{
$udal=$_POST['spis'];
$date2=date("Y-m-d");
$res16="update zakr set spis=2, datespis='$date2' where idzakr='$udal'";
if(mysql_query($res16))
{
Header ("Location: sklad.php");
} 
}
if(isset($_POST['udalchet'])) 
{
$udalchet=$_POST['udalchet'];
$res14="delete from voprosi where idv='$udalchet'";
if(mysql_query($res14))
{
$_SESSION['chet']=1;
Header ("Location: igri.php");
} 
}
if(isset($_POST['savechet'])) 
{
$_SESSION['chet']=0;
Header ("Location: igri.php");
}
if(isset($_POST['savechet1'])) 
{
$_SESSION['chet']=0;
Header ("Location: sprav2.php");
}
if(isset($_POST['udalchetall'])) 
{
$alligra=$_POST['udalchetall'];
$allvoprosi="delete from voprosi where idigra='$alligra'";
$res15="delete from chet where idchet='$alligra'";
if(mysql_query($allvoprosi) and mysql_query($res15))
{
$_SESSION['chet']=0;
Header ("Location: igri.php");
} 
}
if(isset($_POST['udalchetall1'])) 
{
$alligra=$_POST['udalchetall1'];
$allvoprosi1="delete from voprosi where idigra='$alligra'";
$res151="delete from chet where idchet='$alligra'";
if(mysql_query($allvoprosi1) and mysql_query($res151))
{
$_SESSION['chet']=0;
Header ("Location: sprav2.php");
} 
}
if(isset($_POST['udalchetvop'])) 
{
$udalchet=$_POST['udalchetvop'];
$res141="delete from voprosi where idv='$udalchet'";
if(mysql_query($res141))
{
$_SESSION['chet']=1;
Header ("Location: sprav2.php");
}
}


if(isset($_POST['play'])) 
{
$kodvop=$_SESSION['kodvop'];
$otvet=$_POST['otvet'];

$otvet1="update results set otvetres='$otvet', statres=1 where idres=$kodvop";
if(mysql_query($otvet1))
{
Header ("Location: play1.php");
}
}

if(isset($_POST['zapis'])) 
{
$zapis=$_POST['zapis'];
$addigra2="update game set rez=1 where idgame=$zapis";
if(mysql_query($addigra2) )
{
Header ("Location: igri.php");
}
}
?>
<!--скрипт удаления пользователя. пользователь не удаляется безвозвратно из таблицы, а только помечается как удаленный-->