<html>
<title>  ���������� �����������</title>
<head>

        <body>
<br>
<br>
			
<center>
<link rel='stylesheet' type='text/css' href='css/index.css' /> 
<div id='main' class='noifixpng'> 
  
            </div> 
			<center> 
            
			 <center> 
		<table align="center" cellspacing="2" cellpadding="2" border="0"  width="600" bgcolor="#99FF66">
<tr>
	<td colspan="3" align="center" class="ppp">
	<br>  
	<h2> 
  <?php 
require "conf/dbconnect.php";
$namec=mysql_query("select namec from contact where namec!='0' limit 1");
while($sod_mas1=mysql_fetch_row($namec))
{
$title=$sod_mas1[0];
echo $title;
};
?></h2>
<table width="600"> <tr> <td width="150" align="center">  <img src="image/user.png" height="80" width="80" > </td> 
	<td width="300" align="center"> <h2>���������� �����������</h2> <br> <a href="reg.php">�����������</a><br></td> <td width="150" align="center">  <img src="image/cup.png" height="80" width="80" > </td> </tr> </table>	
		</td>
</tr>
<tr>
	<td bgcolor="#ffffcc" align="center" ><center>������� ����� � ������
</td>
</tr>
<tr>
	<td align="center">
	<form method="post" action="auth.php" > <table align="center">
             
              <td>�����:</td>
              <td><input type="text" name="login" class="text"></td></tr>

            <tr>
              <td>������:</td>
              <td><input type="password" name="password" class="text"></td></tr>
            <tr>
              <td colspan=2>
                  <br><center>
				  <input type="submit"  name="parol"  width="99" height="33" border="0" value="����"></form>  </td>
            </tr>
         </table>
	
	</td>
	</tr>
	<tr>  <td class="tr"><center><a href="admin/index.php">���� ��� ��������������</a><br> </td>
	</tr>
</table>





  		
     
        </body>     
  
</html>
