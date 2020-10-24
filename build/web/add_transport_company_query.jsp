<%-- 
    Document   : add_transport_company_query
    Created on : May 29, 2020, 11:26:27 PM
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
         String q="insert into transport_company(company_name,email_id,phone_no,address,city,state,company_type,admin_id) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+session.getAttribute("adid")+"')";
         //out.print(q);
         db_layer.dblayer.executeq(q);
         }
         catch(Exception ex)
         {
             System.out.println("Exception:"+ex);
         }
         response.sendRedirect("login_success.jsp?msg=Transport company successfully added <a href=add_transport_company.jsp> <h3>Add more transport company</h3> </a>");    
     %>
    </body>
</html>
