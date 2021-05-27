<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<body background="http://www.teamarking.com/barcode/bar_background.jpg"> 
<h1>Welcome  <%= session.getAttribute("a") %></h1>
    <form method="post" action="done.jsp">

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vote</title>
    </head>

    <center>    
        <table border="1" width="30%" height="30%">
            <th><font color='#D18603'>Name</font>
            <th><font color='#D18603'>Party</font></th>
            

            <th><font color='#D18603'>VOTE</font>
                <form action="some.jsp">

                    </tr>

                    <form method="post">



                        <%
                        
                            Class.forName("org.postgresql.Driver");
                        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","uddesh");

                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from leader");
                            while (rs.next()) {

                                String name= rs.getString(1);
                                String party = rs.getString(2);
                                
                                out.println("<tr>");
                                out.println("<td>" + name + "</td>");
                                out.println("<td>" + party + "</td>");
                                

                                out.println("<td><b><form action='done.jsp'><input type='submit' value='VOTE'>  <input type=\"hidden\" id=\"activityid1Value\" name=\"name\" value=\""+name +"\"></form></b>");
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                        </center>
                        </table>
                       
                    </form>
                  
                </form>
                </body>
                </html>