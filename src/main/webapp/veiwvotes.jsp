<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("org.postgresql.Driver"); %>
<HTML>
       <HEAD>
       <TITLE>Total Votes </TITLE>
       </HEAD>
       <BODY BGCOLOR="cyan">
       <H1>Welcome <%= session.getAttribute("a") %> </H1>
       Enter leader name:
       <form action="veiwvotes.jsp">
       <input type="text" name="user">
       <input type="submit" value="VIEW">
       </form>
       <%
       String user=request.getParameter("user");
 	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","uddesh");
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from vote where leader='"+ user +"'") ;
     
      
      int vote=0;
  while(resultset.next())
      {
    	  vote++;
    	  
      } %>
      
      <h1>Total Votes = <%= vote %></h1>
 
     </BODY>
</HTML>