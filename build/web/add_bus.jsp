<%@include file="header_admin.jsp" %>

<form name="frm" method="post" action="add_bus_query.jsp">
<table class="inner_table">
    <tr>
       	<th colspan=2 >Add Bus</th>
    </tr>
    <tr>
	<td>Bus No</td>
        <td><input type=text name=t1 id="t1" required></td>
    </tr>
    <tr>
	<td>Source</td>
        <td> 
            <select  name=t2 id="t2" required> 
                <%
                    ResultSet rs=db_layer.dblayer.getResult("select place_name from place order by place_name");
                    while(rs.next())
                        out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                %>
            </select>
        </td>
    </tr>
    <tr>
	<td>Destination</td>
        <td> 
            <select  name=t3 id="t3" required> 
                <%
                    rs=db_layer.dblayer.getResult("select place_name from place order by place_name");
                    while(rs.next())
                        out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
                %>
            </select>
        </td>
    </tr>
    <tr>
	<td>Transport Company</td>
        <td><select  name=t4 id="t4" >
            <%
                rs=db_layer.dblayer.getResult("select company_name from transport_company order by company_name");
                while(rs.next())
                  out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
            %>
            </select></td>
    </tr>
    <tr>
	<td>Make Company</td>
        <td><input type=text name=t5 id="t5" required></td>
    </tr>
    <tr>
	<td>AC</td>
        <td><input type=radio name=t6 id="t6" value="1" > yes <input type=radio name=t6 id="t6" value="0" > No</td>
    </tr>
    <tr>
	<td>Video Coach</td>
        <td><input type=radio name=t7 id="t7" value="1" > yes <input type=radio name=t7 id="t7" value="0" > No</td>
    </tr>
    <tr>
	<td>Fans</td>
        <td><input type=radio name=t8 id="t8" value="1" > yes <input type=radio name=t8 id="t8" value="0" > No</td>
    </tr>
    <tr>
	<td>Permit Number</td>
        <td><input type=text name=t9 id="t9" required></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" value="Save" ></td> 
    </tr>
</table>
</form>

<%@include file="footer_admin.jsp" %>

