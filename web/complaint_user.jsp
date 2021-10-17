<%@ include file="header_user.jsp" %>
    <form name="frm" method="post" action="complaint_user_query.jsp">
    <table class="form_table">
    <tr>
        <th colspan="2"> Complaint </th>
    </tr>
    <tr>
        <td> Name </td>
        <td> <input type="text" name="t1" id="t1" required> </td>
    </tr>
    <tr>
        <td> Phone No </td>
        <td> <input type="text" name="t3" id="t3" required> </td>
    </tr>

    <tr>
        <td> Complaint Description </td>
        <td> <textarea name="t4" id="t4" required ></textarea> </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="Report">
        </td>
    </tr>
    </table>
    </form>
<%@ include file="footer_user.jsp" %>