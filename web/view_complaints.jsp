<%-- 
    Document   : view_complaints
    Created on : May 30, 2020, 12:09:55 AM
    Author     : Vishali-PC
--%>

<%@ include file="header_admin.jsp" %>

<div class="table_scroll">
    <table class="inner_table">
        <tr bgcolor="pink">
            <th> Complaint ID </th>
            <th> Date Time of Report </th>
            <th> Name </th>
            <th> Phone No </th>
            <th> Description </th>
            <th> Options </th>
        </tr>
        <%
            ResultSet rs=db_layer.dblayer.getResult("select * from complaint order by date_time_of_report");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(4)+"</td><td> <a href='respond_complaint.jsp?rid="+rs.getString(1)+"&name="+rs.getString(3)+"'>Respond</a> </td></tr>");
            } 
        %>
    </table>
</div>
<%
    if(request.getParameter("p")!=null)
    out.print("<script language=javascript>alert('Complaint successfully responded');</script>");
%>
    
<%@ include file="footer_admin.jsp" %>
