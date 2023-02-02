<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function chk_onclick()
{
var myform=document.pform;
if(myform.username.value=="" || myform.passwd.value=="")
{
alert("PLEASE COMPLETE ALL THE SPECIFICATION");
if(myform.username.value=="")
{
myform.username.focus();
}
else
{
myform.passwd.focus();
}
}
}
</script>
</head>
<body>
<font face="ROMAN" size=6>
<center><table cellpadding=2 cellspacing=0 border=0 height=600 width=600>
<tr><td bgcolor="skyblue"bgcolor="#ffffff"
background="C:\Users\Admin\Desktop\2.jpg" background-position:"fixed"
background-repeat:"no-repeat"><center>APPLICANT'S LOGIN.</center>
<table cellpadding=0 cellspacing=0 border=0 width=100%><tr>
<br>
<td bgcolor="grey" align=left style="padding:3;padding-bottom:4">
<b><font size=4 color="white" face="Roman"><b>Enter your
Credentials...</b></font></td></tr>
<tr><td bgcolor="white" style="padding:5"><br>
<form method="post" action="newLOGIN_A.jsp" name=pform>
<center><table>
<tr><td><font face="verdana,arial" size=-1>USERNAME:</td><td>
<input type="text" name="username"></td></tr>
<tr><td><font face="verdana,arial" size=-1>PASSWORD:</td><td>
<input type="password" name="passwd"></td></tr>
<tr><td><font face="verdana,arial" size=-1>&nbsp;
</td><td><font face="verdana,arial" size=-1>
<input type="submit" value="SUBMIT" name=chkform
onclick="chk_onclick()"></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>Not member yet? Click
<a
href="new1.jsp">here</a> to register.</td></tr>
<td align="right" valign="bottom"><img src="1.gif" width="5" height="5"
></td>
</table></center>
</form>
<form method="post" action="newhome1.jsp">
<input maxlength="255" size="30" value="HOME" type="submit" >
</form>
</td></tr></table></td></tr></table>
</body>
</html>
<%
String k1=request.getParameter("username");
session.setAttribute("t1",k1);
if(k1!=null){
try{
String k2=request.getParameter("passwd");
Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobportal", "root", "data@123");
Statement s = c.createStatement();
String sql = "select * from newapplicant where username='"+k1+"'";
//and password='"+k2+"'";
ResultSet rs=s.executeQuery(sql);
rs.next();
String pass=rs.getString(5);
if(k2.equals(pass))
{
%>
 <jsp:forward page="newapp_home.jsp" />
<%}
else
{
%>
<script>
 alert("Your ID and Password do not match.Enter a valid Login
Id and Password.");
 </script>
<%}
}catch(Exception e)
{
%>
<script>
alert("INVALID USER ID");
</script>
<%}
}
%>