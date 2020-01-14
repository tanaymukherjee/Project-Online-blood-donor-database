<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%

forgotpassword f1=new forgotpassword();
try{
if(!f1.forgotpassword1(request.getParameter("emailid1")))
{
	JOptionPane.showMessageDialog(null," Please Check Your Emailid" );	
	return; 
	
}
JOptionPane.showMessageDialog(null,"Your Password Is sent On Your Emailid" );
response.sendRedirect("index.html");
return;

}
catch (Exception e)
{
out.println("error occured while updating " + e.getMessage());
} 

%>