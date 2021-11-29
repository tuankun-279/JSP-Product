<%-- 
    Document   : add
    Created on : Nov 25, 2021, 10:06:05 PM
    Author     : Loki Kun
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");            
            String price = request.getParameter("price");
            String quantity = request.getParameter("quantity");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/management", "root", "");
                Statement st = conn.createStatement();

                int i = st.executeUpdate("insert into product(ProductName,Price,Quantity)values('" + name + "','" + Integer.parseInt(price) + "','" + Integer.parseInt(quantity) + "')");
                out.println("Data is successfully inserted!");
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        %>
    </body>
</html>
