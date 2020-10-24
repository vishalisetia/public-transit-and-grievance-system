<%-- 
    Document   : view_routes
    Created on : May 30, 2020, 12:10:19 AM
    Author     : Vishali-PC
--%>

<%@ include file="header_admin.jsp" %>

<div class="table-scroll">
    <table class="inner_table">
        <tr bgcolor="pink" width="100%" height="50">
       	    <th>Route ID</th>
            <th>Stoppage Name</th>
            <th>Time</th>
            <th>Bus No</th>
            <th>Distance</th>
            <th>Options</th>
        </tr>
        
        <%
        ResultSet rs=db_layer.dblayer.getResult("select * from routes where bus_no='"+request.getParameter("bno")+
                "' order by distance_from_source");
        while(rs.next())
        {
            out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+
                    "</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td> <a href='remove_route_query.jsp?rid="+rs.getString(1)+"&bno="+request.getParameter("bno")+"'>Remove</a> <a href='modify_route.jsp?rid="+rs.getString(1)+"&bno="+request.getParameter("bno")+"'>Modify</a></td></tr>");
        }    
        %>
    </table>
</div>    
   
<%@ include file="footer_admin.jsp" %>
    
