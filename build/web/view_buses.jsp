<%@ include file="header_admin.jsp" %>

<div class="table_scroll">
    <table class="inner_table">
        <tr bgcolor="pink" height="10%">
            <th>Bus No</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Transport Company</th>
            <th>Options</th>
        </tr>
        <%
            ResultSet rs=db_layer.dblayer.getResult("select * from buses order by bus_no");
            while(rs.next())
            {
                out.print("<tbody><tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"
                +rs.getString(4)+"</td><td><a href='view_routes.jsp?bno="+rs.getString(1)+">Route</a></td></tr></tbody>");  
            }    
        %>
    </table>
    </div>
<%@ include file="footer_admin.jsp" %>