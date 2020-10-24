<%-- 
    Document   : complaint_user
    Created on : May 29, 2020, 10:57:51 PM
    Author     : Vishali-PC
--%>

<%@ include file="header_user.jsp" %>

        <form name="frm" method="post" action="complaint_user_query.jsp">
        <table style = "height: 400px; width: 500px; border:0px; cellspacing:0px; cellpadding: 10px;">
        <tr>
            <td colspan="2" align="center" bgcolor="pink" > <b> Complaint </b></td>
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
            <td style = "valign: top;"> Complaint Description </td>
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


