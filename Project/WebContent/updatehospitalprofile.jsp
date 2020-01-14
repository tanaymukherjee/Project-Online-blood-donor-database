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
hospitalprofile h1=new hospitalprofile(emailid);
h1.setContactno(Long.parseLong(request.getParameter("contactno")));
h1.setSemailid(request.getParameter("semailid"));
h1.setHwebsite(request.getParameter("hwebsite"));
try{
    if(h1.updatehospitalprofile())
    {
    response.sendRedirect("hospitalhome.jsp");
    return;
    }      
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         }     
  
%>