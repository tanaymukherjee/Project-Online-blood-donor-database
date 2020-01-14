<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.jsp");
    return;
}



String emailid=a.getemailid();
Donorprofile d=new Donorprofile(emailid);
d.setD2(request.getParameter("date"));
d.setHname(request.getParameter("hname"));
d.setHlocation(request.getParameter("hlocation"));
d.setCity(request.getParameter("city"));
try{
    if(d.inserthistory())
    {
    response.sendRedirect("donorhome.jsp");
    return;
    }
    else
    {
    	response.sendRedirect("updatehistory1.jsp");
        return;
    }
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         } 

%>