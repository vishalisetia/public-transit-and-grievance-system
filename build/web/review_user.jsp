<%@ include file="header_user.jsp" %>
<form name="frm" method="post" action="review_user_query.jsp" >
    <table class="form_table">
        <tr>
            <th colspan="2"> Review </th>
        </tr>
        <tr>
            <td> Bus No </td>
            <td> <select name="t1" id="t1" required>
                    <%                        
                        ResultSet rs = db_layer.dblayer.getResult("select bus_no from buses order by bus_no");
                        while (rs.next()) {
                            out.print("<option value='" + rs.getString(1) + "'>" + rs.getString(1) + "</option>");
                        }
                    %> 
                </select> 
            </td>
        </tr>
        <tr>
            <td> Description </td>
            <td> <textarea name="t2" id="t2" required> </textarea> </td>
        </tr>
        <tr>
            <td> Rating </td>
            <td> 
                <img src='images/star_empty.png' id='img1' name='img1' width='30' height='30' onmouseover="rate(1)">
                <img src='images/star_empty.png' id='img2' name='img2' width='30' height='30' onmouseover="rate(2)">
                <img src='images/star_empty.png' id='img3' name='img3' width='30' height='30' onmouseover="rate(3)">
                <img src='images/star_empty.png' id='img4' name='img4' width='30' height='30' onmouseover="rate(4)">
                <img src='images/star_empty.png' id='img5' name='img5' width='30' height='30' onmouseover="rate(5)">               
                <script language="javascript" >
                    function rate(k)
                    {
                        for (i = 1; i <= k; i++)
                            document.getElementById("img" + i).src = "images/star_full.png";
                        for (i = k + 1; i <= 5; i++)
                            document.getElementById("img" + i).src = "images/star_empty.png";
                        document.getElementById("t3").value = k;
                    }
                </script>
                <input type="hidden" name="t3" id="t3"> 
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" > <input type="submit" value="OK"> </td>
        </tr>
    </table>
</form>

<%@ include file="footer_user.jsp" %>
