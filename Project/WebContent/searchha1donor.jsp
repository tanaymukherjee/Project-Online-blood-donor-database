<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" %>

<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.html");
    return;
}
 
try{

	String state1=request.getParameter("state");
	String city1=request.getParameter("city");
	String bg1=request.getParameter("bloodgrp");
	session.setAttribute("state",state1);
session.setAttribute("city",city1);
session.setAttribute("bg",bg1);
response.sendRedirect("ssearchadmindonor.jsp");
return;

}
catch (Exception e)
{
	out.println(e.getMessage());
    return;
}
%>