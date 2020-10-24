<%-- 
    Document   : modify_route_query
    Created on : May 29, 2020, 11:53:19 PM
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
                String q="update routes set stopage_name='"+request.getParameter("t1")+"',time='"+request.getParameter("t2")+"',distance_from_source='"+request.getParameter("t3")+"' where route_id="+request.getParameter("r1");
                //out.print(q);
                db_layer.dblayer.executeq(q);
                
            }
            catch (Exception ex)
            {
                System.out.println("Exception:" +ex);
            }
            response.sendRedirect("view_routes.jsp?bno="+request.getParameter("b1"));
        %>
    </body>
</html>
