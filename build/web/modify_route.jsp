<%-- 
    Document   : modify_route
    Created on : May 29, 2020, 11:51:11 PM
    Author     : Vishali-PC
--%>

<%@include file="header_admin.jsp" %>

<form name="frm" method="post" action="modify_route_query.jsp">
    <table class="inner_table">
        <tr> <td  colspan="2" align="center" bgcolor="pink" ><b>Modify Route</b> </td> </tr>
        <tr>
            <td> Route ID </td>
            <td>
                <% 
                    out.print("<input type=text name=r1 value='"+request.getParameter("rid")+"' readonly >");
                %>
            </td>
        </tr>
        <tr>
            <td> Bus No </td>
            <td>
                <%
                    out.print("<input type=text name=b1 value='"+request.getParameter("bno")+"' readonly >");
                %>
            </td>
        </tr>
        <tr>
            <td>Stopage Name</td>
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
            <td>time</td>
            <td><input type="time" name="t2" id="t2" required></td>
        </tr>
        <tr>
            <td>Distance from source (in kms)</td>
            <td><input type="text" name="t3" id="t3" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center"> <input type="submit" value="Modify"> </td>
        </tr>
    </table>
</form>
            

<%@include file="footer_admin.jsp" %>
                 











