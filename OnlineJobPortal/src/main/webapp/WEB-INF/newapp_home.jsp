<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html>
<HTML><center><HEAD><FONT SIZE="6"COLOR="Black" FACE="ROMAN">WELCOME TO
CANDIDATE HOME PAGE...</FONT></center><br>
<TITLE>APPLICANT HOME PAGE</TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 9.00.8080.16413"></HEAD>
<BODY BGCOLOR="White" >
<form NAME="CREATEACCTFORM" action="newapp_home.jsp" METHOD="POST" >
<table width="780" border="0" align="center" cellpadding="0"
cellspacing="0">
<table width="100%" border="0" cellpadding="7" cellspacing="0"
class="bg_white">
<tr>
<td width="400" align="right" bgcolor="skyblue"><b><font size="2"
face="Tahoma" color="white">Search Jobs</font></b></td>
</tr>
<tr>
<table border="0" align="center" cellpadding="0" cellspacing="0">
</tr>
<tr>
<span id="email_msg"></span>
</tr>
</table>
<div id="EMAILID" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_EMAIL" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
<br>
<tr>
<center><td align="center" valign="top">Location: </td>
<td valign="top" ><select name="loc" style="width:165" ><option > - Select
-</option><option
>DELHI</option><option>BANGLORE</option><option>CHENNAI</option><option>GUR
GAON</option><option>HYDERABAD</option><option>MUMBAI</option><option>KOLKA
TA</option><option>PUNE</option><option>NOIDA</option><option>KANPUR</optio
n></select></center>
<br>
</tr>
<tr>
<center><td align="center" valign="top"><span class="txt_orange"></span>
Skills:&nbsp</td>
<td valign="top" ><select name="SKILLS" style="width:165" ><option > -
Select -
</option><option>ITI</option><option>C</option><option>C++</option><option>
JAVA</option><option>GOOD TYPING SPEED</option></select></center>
<br>
<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
<tr>
<center><td align="center" valign="top"><span
class="txt_orange"></span>Functional Area: </td>
<td valign="top">
<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
<tr>
<select name="area" style="width:165" id="industry" ><option> - Select -
</option><option>Any</option><option>Automotive</option><option>Banking</op
tion><option >Bio
Technology</option><option>Chemicals</option><option>Construction</option><
option>Consumer
Goods</option><option>Education</option><option>Entertainment</option><opti
on>Insurance</option><option>BPO</option><option>Hardware</option><option>S
oftware</option></select>
<br>
<br></center>
<td valign="top">
<center><td align="center" valign="top"><span class="txt_orange"></span>
Key Word: </td>
<td valign="top">
<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
<tr>
<select name="key" style="width:165" ><option> -
Select - </option><option>Sales
Executive</option><option>Teacher</option><option>Manager</option><option>A
ccounting</option><option>Technician</option><option> Software
Professional</option><option>Software Tester</option><option>IT
Professional</option></select>
<br>
<br>
<center><input maxlength="255" size="30"
value="SEARCH" type="submit" ></center>
<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
</table></center>
<br>
<%
String s1=request.getParameter("loc");
String s2=request.getParameter("area");
String s3=request.getParameter("key");
session.setAttribute("a1",s1);
session.setAttribute("a2",s2);
session.setAttribute("a3",s3);
if(s1!=null && s2!=null && s3!=null){
try{
//String s1=request.getParameter("loc");
//String s2=request.getParameter("area");
//String s3=request.getParameter("key");
Connection
c=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobportal", "root", "data@123");
Statement s =c.createStatement();
String sql = "select * from newjob where location= '"+s1+"' andjob_desc='"+s2+"' and sel_post='"+s3+"'";
//out.println(s1);
//out.println(s2);
//out.println(s3);
ResultSet rs=s.executeQuery(sql);
if(rs.next())
{
%>
<jsp:forward page="newjob-selct.jsp"/>
<%
}
else
{
%>
<script>
 alert("SORRY,NO SUCH JOB AVAILABLE.");
 </script>
<%
}
//out.println("success");
}catch(Exception e ){out.println(e);
}
}
%>
</table>
</form>
<center><form method="post" action="newview.jsp">
<input maxlength="255" size="30" value="VIEW
APPLICATIONS" type="submit" ></center>
<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px;
_margin-left:20px; _margin-top:0px; position:absolute;"></div>
<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;"
class="txt_red small_1"></div>
</td>
</tr>
</form>
</table></center>
<br>
<center><form method="post" action="newLOGIN_A.jsp">
<input maxlength="255" size="30" value="LOGOUT" type="submit" ></center>
</form>
</body>
</html>