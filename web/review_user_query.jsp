<%-- 
    Document   : review_user_query
    Created on : May 30, 2020, 12:33:59 AM
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
            String q="insert into review(bus_no,date_time_of_review,description,rating) values('"+request.getParameter("t1")+"',NOW(),'"+request.getParameter("t2")+"','"+request.getParameter("t3")+"')";
//            String q="insert into complaint(reported_by_name,date_time_of_report,phone_no,description,report_status) values('"+request.getParameter("t1")+"',NOW(),'"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','Pending')";
            
            db_layer.dblayer.executeq(q);
            }
         
         catch(Exception ex)
         {
             System.out.println("Exception:"+ex);
         }
         response.sendRedirect("index.jsp?p=Your reviews has been submitted");
     %>
    </body>
</html>

            

            