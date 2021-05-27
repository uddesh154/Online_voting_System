<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Database</title>
</head>
<body>
<%
try
{
	Class.forName("org.postgresql.Driver");
	Connection c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","uddesh");
	Statement stmt=c.createStatement();
	String sql1="create table admin(name varchar(20) primary key,pass varchar(20))";
	stmt.executeUpdate(sql1);
	out.println("Table created");
	String sql="insert into admin values('uddesh','uddesh')";
	stmt.executeUpdate(sql);
	String sql2="create table leader(name varchar(20),party varchar(20) primary key,gender varchar(20),phone varchar(20),address varchar(20),password varchar(20))";
	stmt.executeUpdate(sql2);
	out.println("Table created");
	String sql3="create table voter(name varchar(20),username varchar(20) primary key,gender varchar(20),phone varchar(20),address varchar(20),password varchar(20));";
	stmt.executeUpdate(sql3);
	out.println("Table created");
	String sql4="create table vote(leader varchar(20),voter varchar(20))";
	stmt.executeUpdate(sql4);
	out.println("Table created");
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>