<%@ include file="header_user.jsp" %>
<form name='frm' method='post' action='find_route.jsp' >
    <table style = "height:200px; width:100%; border:0; cellspacing:0; cellpadding:10px">
        <tr style="height:80px; bgcolor:lightgreen;width:100%">
            <td colspan="5" align="center" > <b> Find Route </b> </td>
        </tr>
        <tr style="height:100px; width:100%">

            <td> Select Source </td>
            <td> 
                <select name='t1' id='t1' required>
                    <%                       
                        try {
                            ResultSet rs = db_layer.dblayer.getResult("select place_name from place order by place_name");
                            System.out.println("Hi" + rs.getFetchSize());
                            while (rs.next()) {
                                out.print("<option value='" + rs.getString(1) + "'>" + rs.getString(1) + "</option>");
                            }
                        } catch (Exception ex) {
                        }
                    %>
                </select>
            </td>        
            <td> Select Destination </td>
            <td> 
                <select name='t2' id='t2' required>
                    <%
                        try {
                            ResultSet rs = db_layer.dblayer.getResult("select place_name from place order by place_name");
                            while (rs.next()) {
                                out.print("<option value='" + rs.getString(1) + "'>" + rs.getString(1) + "</option>");
                            }
                        } catch (Exception ex) {
                        }
                    %>
                </select>
            </td>
            <td align="left" > <input type='submit' value='Search'></td>
        </tr>
    </table>
</form>   


<div class='table-scroll'>
    <table style="height:1000px; width:100%; border:0px; cellspacing:0px; cellpadding:10px;" >
        <tr>
            <th>Bus No</th>
            <th>Source</th>
            <th>Departure Time</th>
            <th>Destination</th>
            <th>Arrival Time</th>
            <th>Distance (km)</th>
            <th>Fare (Rs.)</th>
            <th>Star Rating (5)</th>
        </tr>
        <%
            String q = "select r1.bus_no,r1.stopage_name,r1.time,r2.stopage_name,r2.time,r2.distance_from_source-r1.distance_from_source as distance from routes r1,routes r2 where r1.distance_from_source<r2.distance_from_source and r1.stopage_name='" + request.getParameter("t1") + "' and r2.stopage_name='" + request.getParameter("t2") + "' and r1.bus_no=r2.bus_no";
            //out.print(q);
            String r;
            ResultSet rs = db_layer.dblayer.getResult(q);
            if (rs != null) {
                while (rs.next()) {
                    out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + Math.round(Double.parseDouble(rs.getString(6)) * 1.04) + "</td><td>");
                    ResultSet rr = db_layer.dblayer.getResult("select avg(rating),count(*) from review where bus_no='" + rs.getString(1) + "'");
                    if (rr.next() == true) {
                        out.print((rr.getString(1) == null ? "" : (rr.getString(1) + " (" + rr.getString(2) + ")")) + "</td></tr>");
                    }
                }
            }
        %>           
    </table>
</div>      

<%@ include file="footer_user.jsp" %>
