<%@include file="header_admin.jsp" %>

<form name="frm" method="post" action="add_route_query.jsp">
<table class="inner_table">
    <tr>
       	<th colspan=2 >Add Route </th>
    </tr>
    <tr>
	<td>Stoppage Name</td>
        <td> 
            <select  name=t1 id="t1" required> 
                <%
                    ResultSet rs=db_layer.dblayer.getResult("select place_name from place order by place_name");
                    while(rs.next())
                        out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                %>
            </select>
        </td>
    </tr>
    <tr>
	<td>Time</td>
        <td><input type=time name=t2 id="t2" required></td>
    </tr>
    <tr>
	<td>Bus No</td>
        <td>
            <select  name=t3 id="t3" required >
                <%
                rs=db_layer.dblayer.getResult("select bus_no from buses order by bus_no");
                while(rs.next())
                    out.print("<option value='"+rs.getString(1)+"' "+(request.getParameter("bno")!=null && request.getParameter("bno").equals(rs.getString(1))?" selected ":"")+">"+rs.getString(1)+"</option>");
                %>
            </select>
        </td>
    </tr>
    <tr>
	<td>Distance from source (in kms)</td>
        <td><input type=text name=t4 id="t4" required></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" value=Save></td> 
    </tr>
    <%
        if(request.getParameter("p")!=null)
            out.print("<script language=javascript >alert('route successfully added');</script>");
    %>
</table>
</form>

<%@include file="footer_admin.jsp" %>


