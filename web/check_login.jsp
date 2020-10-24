<%-- 
    Document   : check_login
    Created on : May 29, 2020, 11:49:52 PM
    Author     : Vishali-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String q="select name from admin where email_id='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'";
    String s=db_layer.dblayer.getScalar(q);
    if(s==null || s.equals(""))
       response.sendRedirect("admin_login.jsp?log=4");
    else 
    {
       String aid=db_layer.dblayer.getScalar("select admin_id from admin where email_id='"+request.getParameter("t1")+"'");
       session.setAttribute("adid", aid);
       session.setAttribute("nm", s);
       session.setAttribute("em", request.getParameter("t1"));
       
       response.sendRedirect("login_success.jsp");
    }
%>
