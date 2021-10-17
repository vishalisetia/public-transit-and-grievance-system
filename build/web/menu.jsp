<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/menu.css">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="script.js"></script>
        <title>Menu</title>
        <style>
            /* Add a black background color to the top navigation */
            .topnav {
                background-color: #333;
                overflow: hidden;
            }

            /* Style the links inside the navigation bar */
            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            /* Change the color of links on hover */
            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            /* Add a color to the active/current link */
            .topnav a.active {
                background-color: #4CAF50;
                color: white;
            }   
        </style>
    </head>

    <body>
        <div class="topnav">
            <table>
                <tr>
                    <td><a href='index.jsp'><span>Home</span></a></td>
                    <td><a href='find_route.jsp'>Find Route</a></td>
                    <td><a href='complaint_user.jsp'>Complaints</a></td>
                    <td><a href='review_user.jsp'>Reviews</a></td>
                    <td><a href='admin_login.jsp'>Admin Login</a></td>
                </tr>
            </table>
        </div>
    </body>
</html>
