<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="newapp_home.jsp">
<%
try{
String c1=(String)session.getAttribute("t1");
String b1=(String)session.getAttribute("v1");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobportal", "root", "data@123");
Statement s =c.createStatement();
String sql ="select * from newinterview where can_uname='"+c1+"'";
ResultSet rs=s.executeQuery(sql);
while(rs.next())
{
int i=0;
i=i+1;
%>
<FONT SIZE="4"COLOR="black"
FACE="roman"><b>APPLICATION:</b><%=i%></FONT><br>
<FONT SIZE="4"COLOR="black"
FACE="roman">Username:<%out.println(rs.getString(1));%></FONT><br>
<FONT SIZE="4"COLOR="black"
FACE="roman">Company:<%out.println(rs.getString(2));%></FONT><br>
<FONT SIZE="4"COLOR="black" FACE="roman">Interview date:
<%out.println(rs.getString(3));%></FONT><br>
<FONT SIZE="4"COLOR="black" FACE="roman">Interview Time:
<%out.println(rs.getString(4));%></FONT><br>
<FONT SIZE="4"COLOR="black" FACE="roman">Interview Place:
<%out.println(rs.getString(5));%></FONT><br>
<%
}
}catch(Exception e ){out.println(e);
}
%>
<br>
<br>
<br>
<input type="submit" value="OK">
</form>
</body>
</html>
