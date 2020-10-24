<%-- 
    Document   : login_success
    Created on : May 29, 2020, 11:51:38 PM
    Author     : Vishali-PC
--%>

<%@include file="header_admin.jsp" %>                
                
<%
   
    if(request.getParameter("msg")!=null)
        out.print("<h1>"+request.getParameter("msg")+"</h1>");
  
%>
     
<%@include file="footer_admin.jsp" %>