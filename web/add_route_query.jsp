<%-- 
    Document   : add_route_query
    Created on : May 29, 2020, 11:25:15 PM
    Author     : Vishali-PC
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         try{
         String q="insert into routes(stopage_name,time,bus_no,distance_from_source) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"')";
         //out.print(q);
         db_layer.dblayer.executeq(q);
         }
         catch(Exception ex)
         {
             System.out.println("Exception:"+ex);
         }
         response.sendRedirect("login_success.jsp?msg=Route successfully added <a href=add_route.jsp?bno="+request.getParameter("t3")+" > <h3>Add More Route</h3> </a>");
     %>
    </body>
</html>