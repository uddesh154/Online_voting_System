<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>leader Register</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
  font-family: Calibri, Helvetica, sans-serif;
  background-color: pink;
}
.container {
    padding: 50px;
  background-color: lightblue;
}

input[type=text], input[type=password], textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: orange;
  outline: none;
}
 div {
            padding: 10px 0;
         }
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity: 1;
}
</style>
</head>
<body>
<form>
  <div class="container">
  <center>  <h1> Leader Registration Form</h1> </center>
  <hr>
 
   <form method="get" action="registration.jsp">

  <label> Firstname </label> 
  <input type="text" name="fullname" placeholder="Firstname Middlename Lastname" size="40" required /> 
<label> Party: </label>  
<input type="text" name="Username" placeholder="Username" size="15"required /> 
<div>
<label> 
Gender :
</label><br>
<input type="radio" value="Male" name="gender" checked > Male 
<input type="radio" value="Female" name="gender"> Female 
<input type="radio" value="Other" name="gender"> Other

</div>
<label> 
Phone :
</label>
<input type="text" name="phone" placeholder="phone no." size="10"/ required> 
<label> 
Address :
</label>
<input type="text" name="address" placeholder="address" size="10"/ required> 
<label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
</div>
<input type="submit" value="Submit">
</form>
<%
String fullname=request.getParameter("fullname");
String party=request.getParameter("Username");
String gender=request.getParameter("gender");
String phoneno=request.getParameter("phone");
String address=request.getParameter("address");
String password=request.getParameter("psw");
if(fullname!=null && party!=null && gender!=null && phoneno!=null && address!=null && password!=null )
{
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","uddesh");
	  Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into leader values('"+fullname+"','"+party+"','"+gender+"','"+phoneno+"','"+address+"','"+password+"')");
			out.println("Success");
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}
}
else
{%>
	<script type="text/javascript" language="javascript">
	alert("Feilds must contains some value");
	</script>

<%}
%>
 
</body>
</html>