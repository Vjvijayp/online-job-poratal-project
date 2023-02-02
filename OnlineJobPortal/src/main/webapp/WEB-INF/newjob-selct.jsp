<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SELECT JOB</title>
</head>
<body BGCOLOR="white" >
<form method="post" action="newinterview.jsp">
<%
try{
String b1=(String)session.getAttribute("a1");
String b2=(String)session.getAttribute("a2");
String b3=(String)session.getAttribute("a3");
//out.println(b1);
Connection
c=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobportal", "root", "data@123");
Statement s =c.createStatement();
String sql ="select * from newjob where location='"+b1+"' andjob_desc='"+b2+"' and sel_post='"+b3+"'";
ResultSet rs=s.executeQuery(sql);
rs.next();
%><table BORDER=10 WIDTH=200 HEIGHT=150 BGCOLOR="WHITE" align="center">
<tr>
<td><FONT SIZE="4"COLOR="black"
FACE="roman">Company:<%out.println(rs.getString(1));%></FONT><br></td></tr>
<tr>
<td><FONT SIZE="4"COLOR="black"
FACE="roman">Vacancies:<%out.println(rs.getString(3));%></FONT><br>
</td></tr>
<tr><td><FONT SIZE="4"COLOR="black" FACE="roman">Salary:
<%out.println(rs.getString(4));%></FONT><br></td></tr>
<tr><td><FONT SIZE="4"COLOR="black" FACE="roman">Job Post:
<%out.println(rs.getString(7));%></FONT><br></td></tr>
<tr><td><FONT SIZE="4"COLOR="black" FACE="roman">Location:
<%out.println(rs.getString(6));%></FONT><br></td></tr>
</table>
<br>
<br>
<INPUT type="submit" value="APPLY" align="center">
<%
}catch(Exception e ){out.println(e);
}
%>
</form>
<br>
<br>
<form method="post" action="newapp_home.jsp">
<INPUT type="submit" value="BACK" ><BR>
</form>
</body>
</html>