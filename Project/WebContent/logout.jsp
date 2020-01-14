<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*"%>
<%
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
{
    response.sendRedirect("index.html");
    return;
}

a.logout();
%>