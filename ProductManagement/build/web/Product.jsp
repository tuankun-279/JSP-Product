<%-- 
    Document   : Product
    Created on : Nov 25, 2021, 9:46:51 PM
    Author     : Loki Kun
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "");
            Statement st = con.createStatement();
            String sql = "select * from product";
            ResultSet rs = st.executeQuery(sql);
        %>
         <TABLE BORDER="1">
      <TR>
      <TH>ID</TH>
      <TH>Name</TH>
      <TH>Price</TH>
      <TH>Quantity</TH>      
      </TR>
      <% while(rs.next()){ %>
      <TR>
       <TD> <%= rs.getString(1) %></td>
       <TD> <%= rs.getString(2) %></TD>
       <TD> <%= rs.getString(3) %></TD>
       <TD> <%= rs.getString(4) %></TD>       
      </TR>
      <% } %>
      
      
     </TABLE>
    </body>
</html>
