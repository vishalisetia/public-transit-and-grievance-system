<%-- 
    Document   : respond_complaint
    Created on : May 30, 2020, 12:32:09 AM
    Author     : Vishali-PC
--%>

<%@ include file="header_admin.jsp" %>
<form name="frm" method="post" action="respond_complaint_query.jsp">
    <table class="inner_table">
        <tr>
            <td colspan="2" align="center" bgcolor="pink" > <b> Respond Complaint </b></td>
        </tr>
        <tr>
            <td> Complaint ID </td>
            <td> 
                <%
                    out.print("<input type='text' name='t1' id='t1' value='"+request.getParameter("rid")+"' readonly>");
                %>
            </td>       
        </tr>
        <tr>
            <td> Name </td>
            <td>
                <%
                    out.print("<input type='text' name='t2' id='t2' value='"+request.getParameter("name")+"' readonly>");
                %>
            </td>
        </tr>
        <tr>
            <td> Action Taken </td>
            <td> <input type="text" name="t3" id="t3" required> </td>
        </tr>
        <tr>
            <td> Action Taken By </td>
            <td> <input type="text" name="t4" id="t4" required> </td>
        </tr>
        <tr>
            <td> Report Status </td>
            <td> <input type="text" name="t5" id="t5" 
                        value="<%
                            ResultSet rs=db_layer.dblayer.getResult("select * from complaint where report_id="+request.getParameter("rid")); 
                                while(rs.next())
                                        {
                                            out.print(rs.getString("report_status"));
                                        }
                               %>">
            </td>
        </tr>
        <tr>
            <td> </td>
            <td colspan="2">
                <input type="radio" id="t6" name="r1" value='accepted' required >
                <label for="t6"> Accept </label>
                <input type="radio" id="t7" name="r1" value='resolved'  required >
                <label for="t7"> Resolved </label>
                <input type="radio" id="t8" name="r1" value='rejected'  required >
                <label for="t8"> Reject </label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"> <input type="submit" value="Save"> </td>
        </tr>
    </table>
</form>
<%@ include file="footer_admin.jsp" %>

