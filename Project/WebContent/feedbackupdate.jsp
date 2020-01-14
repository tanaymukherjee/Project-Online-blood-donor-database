<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.jsp");
    return;
}



feedback f1=new feedback();
f1.setD2(request.getParameter("date"));
f1.setEmailid(request.getParameter("emailid"));
f1.setStatus(request.getParameter("status"));
try{
    if(f1.updatefeedback())
    {
    response.sendRedirect("adminhome.jsp");
    return;
    }
    else
    {
    	response.sendRedirect("viewfeedback.jsp");
        return;
    }
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         } 

%>