<%-- 
    Document   : respond_complaint_query
    Created on : May 30, 2020, 12:36:01 AM
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
                String q="update complaint set action_taken='"+request.getParameter("t3")+"',action_taken_by='"+request.getParameter("t4")+"',report_status='"+request.getParameter("r1")+"' where report_id='"+request.getParameter("t1")+"'";
                db_layer.dblayer.executeq(q);
            }
            catch(Exception ex)
            {
                System.out.print("Exception:"+ex);
            }
            response.sendRedirect("view_complaints.jsp?p=4");
            
        %>
    </body>
</html>
