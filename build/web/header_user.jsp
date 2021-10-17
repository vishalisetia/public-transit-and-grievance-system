<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="icon" type="image/png" href="images/icons/leaf.ico"/>
        <title>PTGS</title>
        <style>
            .table-scroll
            {
                overflow: auto;
            }
            .outer_table {
                width:100%; 
                border:0; 
                cellspacing: 0; 
                cellpading:7;
            }
            .form_table {
                height: 400px; 
                width: 500px; 
                border:0px; 
                cellspacing:0px; 
                cellpadding: 10px;
            }
            th {
                align: center ;
                background-color: pink;
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
                margin-bottom: 1em;
            }
        </style>
    </head>
    <body>
        <table style = "outer_table">
            <tr style = "background-color: pink;">
                <td align="center">
                    <font style="color: purple; font-size: 30px;"> 
                        <b>Public Transit and Grievance System (PTGS)</b>
                    </font> 
                    <br> 
                    <font style="color: green; font-size: 30px;">
                        <i>"A developed country is not a place where the poor have cars,it's where the rich ride public transportation."</i>
                    </font>
                </td>
            </tr>
            <tr>
                <td align="center"> <%@ include file="menu.jsp" %> </td>
            </tr>
        </table>
        <%
            if(request.getParameter("p")!=null)
                //out.print("<tr><td colspan=2 align=center>Record added</td></tr>");
                out.print("<script language=javascript> alert('"+request.getParameter("p")+"'); </script>");
        %>
