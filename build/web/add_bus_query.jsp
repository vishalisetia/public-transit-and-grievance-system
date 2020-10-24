<%-- 
    Document   : add_bus_query
    Created on : May 29, 2020, 11:27:40 PM
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
         String q="insert into buses(bus_no,source,destination,transport_company,make_company,AC,video_coach,fans,permit_number) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t8")+"','"+request.getParameter("t9")+"')";
         //out.print(q);
         db_layer.dblayer.executeq(q);
         }
         catch(Exception ex)
         {
             System.out.println("Exception:"+ex);
         }
         response.sendRedirect("login_success.jsp?msg=Transport company successfully added <a href=add_bus> <h3>Add more bus</h3> </a>"); 
     %>
    </body>
</html>


