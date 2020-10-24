<%-- 
    Document   : remove_route_query
    Created on : May 30, 2020, 12:36:36 AM
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
            try
            {
                String q="delete from routes where route_id="+request.getParameter("rid");
                //out.print(q);
                db_layer.dblayer.executeq(q);
            }
            catch(Exception ex)
            {
                System.out.println("Exception:"+ex);
            }
            response.sendRedirect("view_routes.jsp?bno='"+request.getParameter("bno")+"'");         
        %>
    </body>
</html>
