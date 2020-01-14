<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.html");
    return;
}


String emailid=a.getemailid();
adminprofile a1=new adminprofile(emailid);
ResultSet rs=a1.getadminprofile();

if(rs.next())
{
       
       a1 = new adminprofile(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getLong(6),emailid);
     
  
 %>




<html>
<head>
<script type="text/javascript" language="javascript" src="lib/adminprf.js"></script>
       <script language="JavaScript" src="lib/adminprf.js"></script>
<script type="text/javascript" src="lib/statecity.js"></script>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Sahyog</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
    	<div id="wrap">
				<div id="menu">
					<ul>
						<li><a href="adminhome.jsp" class="active">Home</a></li>
						<li><a href="lawsandfactsadmin.jsp">Laws & Facts</a></li>
						<li><a href="faqsadmin.jsp">FAQs</a></li>
						<li><a href="">Feedback</a></li>
						<li><a href="">About Us</a></li>
					</ul>
				</div>
                <br>
                <br>
               
                <div class="logo_text">
		<table>			
      <tr><td width="20%"><a href="adminlogodescription.jsp"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/>
 
</a></td>
<td width="80%"><marquee direction="left" onmouseover="this.stop();" onmouseout="this.start();"><FONT size="5" class="header1"><font color="red"><b>You need not be a doctor always to save life, just donate blood. Save life. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Blood alone moves the wheels of history. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
When anyone fills a blood donor form, he is signing a lease of life for someone else. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Blood has got no caste, so be human. Donate blood, help fellow humans.</marquee></font></b></font>
</td ></tr></table>
		</div>
        
        
    
         	<!-- directory -->
				<div id="top_padding"></div>
				
				<div id="content_top"></div>
				
				<div id="content_bg_repeat">
					
					
				<div id="content">
                    <div class="contact_content_left" align="center">
                     <h5><font color="lightgreen">Welcome to your Admin Profile</h5></font>
                        <br><br /><br />
                        
                   <font size="2.5">
 
<form action="updateadminprofile.jsp" method="post" name="Admin_profile" onsubmit="return update();">
      
      <table align="center">
      <tr>
      	<td>Admin id</b>&nbsp;&nbsp;&nbsp;&nbsp;<b></td>
      	<td><INPUT type=text name="adminid" readonly="readonly" VALUE="<%=a1.getAdminid()%>"></td>
      </tr>
      <tr><td>Admin Name</b>&nbsp;&nbsp;&nbsp;&nbsp;<b></td>
      	<td><INPUT type=text name="adminname" readonly="readonly" VALUE="<%=a1.getAdminname()%>"></td>
      	</tr>
      <tr><td>Date Of Birth</b>&nbsp;&nbsp;&nbsp;&nbsp;<b></td>
      	<td><INPUT type=text name="dob" readonly="readonly" VALUE="<%=a1.getDob()%>"></td>
      	</tr>
      <tr><td><b>Gender&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
      	<td><INPUT type=text name="gender" readonly="readonly" VALUE="<%=a1.getGender()%>"></td>
      	</tr>
      <tr><td><b>Address&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
      	<td><INPUT type=text name="address"  VALUE="<%=a1.getAddress()%>"></td>
      	</tr>
      <tr><td><b>Contact No&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
      	<td><INPUT type=text name="contactno"  VALUE="<%=a1.getContactno()%>"></td>
      	</tr>
      <tr><td><b>Email Id&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
      	<td><INPUT type=text name="emailid" readonly="readonly" VALUE="<%=a1.getEmailid()%>"></td>
      	</tr>
      	<tr>
      	<td colspan="2" align="center"><br /><br /><input type="submit" name="submit" id="submit" value="UPDATE" /> </td>
      	</tr>
      </table></form>
      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
   
                   </font>

                   
                   
                    </div>
                    
                    
                    
                    
                    <div class="contact_content_right"><br/><br/>
                        <h6><a href="adminprofile.jsp">View Profile</a></h6>
                                          
                        <h6><a href="changeadminpassword.jsp">Change Password</a></h6>
                        
                        <h6><a href="searchadmindonor.jsp">Search Donor</a></h6>
                        
                        <h6><a href="viewcomplaint.jsp">View Complaint/Suggestion</a></h6>
                        
                        <h6><a href="viewfeedback.jsp"> View Feedback</a> </h6>
                        
                        <h6><a href="bloodrequest.jsp"> View Blood Request</a> </h6>
                         
                         <h6><a href="viewrotaryclub.jsp"> View Rotary Club Request </a> </h6>
                         
                         <h6><a href="logout.jsp">Logout</a></h6>
                        
                    </div>


                    <div style="clear: both"></div>
                </div>
					
				</div>
                
                
                
                
                
                
				<div id="content_bottom"></div>

				<div id="footer_top">

					<div id="footer_column1">

						<h2><td align="right" ><a href="http://www.facebook.com/pages/sahyogcom/365198443514442" target="_blank"><img src="images/facebook.jpeg" width="20" height="20" alt="facebook"/></a>    Facebook Plugin</h2>

						

					</div>

					<div id="footer_column2">

						<h2><a href="https://twitter.com/#!/teamquark2012" target="_blank"><img src="images/twiter.jpeg" width="20" height="20" alt="twiter"/></a>    Twitter Plugin</h2>

					
					</div>

					<div id="footer_column3">

						<h2><a href="https://plus.google.com/113580721352975197256/posts?hl=en" target="_blank"><img src="images/google.jpg" width="20" height="20" alt="you tube"/></a>     Google+ Plugin</h2>

						

					</div>

					<div class="clear"></div>

				</div>

				<div id="footer_bot">

					<p><font color="red"><b>Copyright © Team Quark 2012. All Rights Reserved </font></b>
			      <p><a href="admincontactus.jsp"><font color="green">Contact Us</a> | <a href="adminprivacypolicy.jsp"><font color="green">Privacy Policy</a> </font>

				</div>

		</div>

    </body>

</html>

<%}%>