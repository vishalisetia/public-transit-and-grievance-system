<%-- 
    Document   : add_transport_company
    Created on : May 29, 2020, 11:25:50 PM
    Author     : Vishali-PC
--%>

<%@include file="header_admin.jsp" %>

<form name="form" method="post" action="add_transport_company_query.jsp">
<table class="inner_table">
    <tr>
       	<td colspan=2 align="center" bgcolor="pink"><b>Transport Company</b></td>
    </tr>
    <tr>
	<td>Company Name</td>
        <td><input type="text" name="t1" id="t1"></td>
    </tr>
    <tr>
	<td>Email ID</td>
        <td><input type="email" name="t2" id="t2"></td>
    </tr>
    <tr>
	<td>Phone No</td>
        <td><input type="text" name="t3" id="t3"></td>
    </tr>
    <tr>
	<td>Address</td>
        <td><input type="text" name="t4" id="t4" ></td>
    </tr>
    <tr>
	<td>City</td>
        <td><input type="text" name="t5" id="t5" ></td>
    </tr>
    <tr>
	<td>State</td>
        <td><input type="text" name="t6" id="t6" ></td>
    </tr>
    <tr>
	<td>Company Type</td>
        <td><input type="text" name="t7" id="t7" ></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" value="save" ></td> 
    </tr>
</table>
</form>

<%@include file="footer_admin.jsp" %>
