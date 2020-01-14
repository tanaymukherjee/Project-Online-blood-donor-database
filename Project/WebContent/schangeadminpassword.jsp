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
a1.setPassword(request.getParameter("newpassword"));
a1.setRepassword(request.getParameter("renewpassword"));
try{
    if(a1.changeadminpassword())
    {
    response.sendRedirect("adminhome.jsp");
    JOptionPane.showMessageDialog(null,"Your Password Is Changed");
    return;
    }      
   }  
 catch (Exception e)
         {
     out.println("error occured while updating " + e.getMessage());
         }     
  
%>
