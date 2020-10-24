<%-- 
    Document   : header_user
    Created on : May 29, 2020, 9:50:22 PM
    Author     : Vishali-PC
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="icon" type="image/png" href="images/icons/leaf.ico"/>
        <title>PTGS</title>
        <style>
            /* Holds table with scrollbar */
            .table-scroll
            {
                overflow: auto;
            }
            body
            {
/*              font-size: 70px;
                width:100%; 
                height:500px;*/
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
        </style>
    </head>
    <body>
        <table style = "width:100%; height:500px; border:0; cellspacing: 0; cellpading:7">
            <tr style = "height:100px; background-color: pink; ">
                <td align="center" colspan="4">
                    <font style = "color: purple;  font-size: 30px; "> 
                        <b>Public Transit and Grievance System (PTGS)</b>
                    </font> 
                    <br> 
                    <font style = "color: green; font-size: 30px; ">
                        <i>"A developed country is not a place where the poor have cars,it's where the rich ride public transportation."</i>
                    </font>
                </td>
            </tr>
            <tr>
                <td> <img src="images/bus3.jpg" height="260" width="330" alt="unavailable"> </td>
                <td> <img src="images/bus2.jpg" height="260" width="330" alt="unavailable"> </td>
                <td> <img src="images/bus.jpg" height="260" width="330" alt="unavailable"> </td>
                <td> <img src="images/bus4.jpg" height="260" width="330" alt="unavailable"> </td>
            </tr>
            <tr>
                <td colspan="4" align="center"> <%@ include file="menu.jsp" %> </td>
            </tr>
        </table>
        <%
            if(request.getParameter("p")!=null)
                //out.print("<tr><td colspan=2 align=center >Record added</td></tr>");
                out.print("<script language=javascript> alert('"+request.getParameter("p")+"'); </script>");
        %>
