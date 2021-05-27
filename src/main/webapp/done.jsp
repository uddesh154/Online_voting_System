<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thanks for your Vote</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%

String voter=(String)session.getAttribute("a");
String leader=request.getParameter("name");

try{
	 Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","uddesh");

		  Statement stmt = con.createStatement();
			stmt.execute("insert into vote values('"+leader+"','"+voter+"')");
			out.println("Success!");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>