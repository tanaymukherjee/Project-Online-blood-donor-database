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
d.setMobno(Long.parseLong(request.getParameter("mobileno")));
d.setLandlineno(Long.parseLong(request.getParameter("landlineno")));
d.setPincode(Long.parseLong(request.getParameter("pincode")));
d.setAddress(request.getParameter("address"));
try{
    if(d.updateprofile())
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