<%-- 
    Document   : header_admin
    Created on : May 29, 2020, 11:53:50 PM
    Author     : Vishali-PC
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="icon" type="image/png" href="images/icons/leaf.ico"/>
        <title>PTGS</title>
        <style>
            .table_scroll  
            {
                overflow: auto;
            }
            .outer_table
            {
                width:100%;
                border:0;
                cellspacing:0px;
                cellpadding:7px;
                background-color:AliceBlue;
            }
            .inner_table
            {
                width:80%;
                height:535px;
                border:0;
                cellspacing:0px;
                cellpadding:10px;
            }
            input[type=text], select
            {
                height: 40px;
                width: 400px;
                padding:0px 10px;
                margin: 10px 5px;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 15px;
                box-sizing: border-box;
            }
            button
            {
                width: 300px;
                font-size: 0.8em;
                background-color: #44ac33;
                color: #fff;
                padding: .7em 1em;
                border-radius: .3em;
                font-weight: bold;
                margin-bottom:1em;
            }
            th {
                align: center ;
                background-color: pink;
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            if(session.getAttribute("nm")==null)
            {
                response.sendRedirect("index.jsp?loggedout");
                return;
            }
        %>
        <table class="outer_table">
            <tr style="height:5%; font-size:30px; background-color:orange; border:1px solid black;" >
                <td colspan="2" align="center"> <b>Welcome <%=session.getAttribute("nm")%></b> </td>
            </tr>
            <tr style="height:90% " >
                <td style="width:20%; border:1px solid black; " >
                    <hr> <a href="index.jsp">Home</a>
                    <hr> <a href="add_transport_company.jsp">Add Transport Company</a>
                    <hr> <a href="add_bus.jsp">Add Bus</a>
                    <hr> <a href="add_route.jsp">Add Route</a>
                    <hr> <a href="view_buses.jsp">View Buses</a>
                    <hr> <a href="view_complaints.jsp">View Complaints</a>
                    <hr> <a href="admin_login.jsp">Log Out</a>
                </td>
                <td style="vertical-align:top; width:80%; ">