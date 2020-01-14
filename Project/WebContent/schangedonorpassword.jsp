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
d.setPassword(request.getParameter("newpassword"));
d.setRepassword(request.getParameter("renewpassword"));
try{
    if(d.changepassword())
    {
    response.sendRedirect("donorhome.jsp");
    return;
    }      
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         }     
  
%>
