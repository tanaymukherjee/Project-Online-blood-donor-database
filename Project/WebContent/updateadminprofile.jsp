<%@page import="javax.swing.JOptionPane"%>
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
adminprofile a1=new adminprofile(emailid);
a1.setContactno(Long.parseLong(request.getParameter("contactno")));
a1.setAddress(request.getParameter("address"));
try{
    if(a1.updateadminprofile())
    {
    response.sendRedirect("adminhome.jsp");
    JOptionPane.showMessageDialog(null,"Your Profile Is Updated" );
    return;
    }      
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         }     
  
%>