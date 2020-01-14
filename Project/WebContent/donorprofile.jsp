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
ResultSet rs=d.getprofile();

if(rs.next())
{
       
       d=new Donorprofile(rs.getString(1),rs.getString(2),emailid,rs.getString(5),rs.getString(6),rs.getInt(7),rs.getString(8),rs.getInt(9),rs.getLong(10),rs.getLong(11),rs.getString(12),rs.getString(13),rs.getLong(14),rs.getString(15));
     
  



%>

<html>
<head>
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
						<li><a href="donorhome.jsp" class="active">Home</a></li>
						<li><a href="lawsandfactsdonor.jsp">Laws & Facts</a></li>
						<li><a href="faqsdonor.jsp">FAQs</a></li>
						<li><a href="feedbackdonor.jsp">Feedback</a></li>
						<li><a href="aboutusdonor.jsp">About Us</a></li>
					</ul>
				</div>
                <br>
                <br>
               
                <div class="logo_text">
		<table>			
      <tr><td width="20%"><a href="donorlogodescription.jsp"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/>
 
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
                    <div class="contact_content_left" align="justify">
                     <h5><font color="lightgreen">Welcome to your Donor Profile</h5></font>
                        <br>
                 <font size="2.5">                  <br />
                
                <br />  
                 <h2 class="title" style="color:Red;">"Your Personal Info"</h2>
                 
                 <p><br />Hey, friend. Here you can see the personal details of yours and can modify it if required. Though there are few selective portions which are open to subject of updation. If other details you want to modify whose permission we don't give due to security, then contact us via the provided complaint/suggestion form. Thank You.<br /><br /></p>  
                 <table border="0">
                     <tr>
                         <td><b>First Name</b></td>
                    <td>
                        <INPUT type=text name="firstname" readonly="readonly" VALUE="<%=d.getFname()%>">
                	</td>
                     </tr>
                     <tr>
                         <TD><b>Last Name</b></TD>

	<TD>
	<INPUT type=text name="lastname" readonly="readonly" VALUE="<%=d.getLname()%>">
	</TD>
                     </tr>
                     <tr>
                         <TD><b>Email ID</b></TD>
	<TD>
	<INPUT type=text name="emailid" readonly="readonly" VALUE="<%=d.getEmailid()%>" />
	</TD>
                     </tr>
                     <tr>
                        <TD><b>Gender</b></TD>
        <td><input type="text" name="gender"  readonly="readonly"  VALUE="<%=d.getGender()%>"/>
        </td> 
                     </tr>
                     <tr>
                        <TD><b>Blood Group</b></TD>
	<TD>
        <input type="text" name="bloodgrp" readonly="readonly" VALUE="<%=d.getBloodgrp()%>" />
        </TD> 
                     </tr>
                     <tr>
                        <TD><b>Date of Birth</b></TD>
	<TD>
        <input type="text" name="date" size="5"  readonly="readonly"  VALUE="<%=d.getDate()%>"/>
        &nbsp;&nbsp;&nbsp;<input type="text" size="10" name="month"   readonly="readonly" VALUE="<%=d.getMonth()%>"/>
      
    &nbsp;&nbsp;&nbsp;<input type="text" name="year" size="5" VALUE="<%=d.getYear()%>" readonly="readonly" />

    
       
    
   
	</TD> 
                     </tr>
                     <tr>
                        <TD><b>Mobile Number</b></TD>
	<TD>
	<INPUT type=text name="mobileno" readonly="readonly" VALUE="<%=d.getMobno()%>" />
	</TD> 
                     </tr>
                     <tr>
                        <TD><b>Landline Number</b></TD>

	<TD>
	<INPUT type=text name="landlineno" readonly="readonly" VALUE="<%=d.getLandlineno()%>" />
	</TD> 
                     </tr>
                     <tr>
                       <TD><b>State</b></TD>
	<TD>
        <input type="text" name="state"  readonly="readonly" VALUE="<%=d.getState()%>"/>
      	  </TD>   
                     </tr>
                     <tr>
                         <TD><b>City</b></TD>
	<TD>  
        <input type="text" name="city"  readonly="readonly" VALUE="<%=d.getCity()%>" />
    </TD>
                     </tr>
                     <tr>
                         <TD><b>Pincode</b></TD>
	<TD>  
        <input type="text" name="city"  readonly="readonly" VALUE="<%=d.getPincode()%>" />
    </TD>
                     </tr>
                     <tr>
                         <TD><b>Permanent Address</b></TD>
	<TD>
	<input type="text" name="address" size="40" readonly="readonly" VALUE="<%=d.getAddress()%>" />

	</TD>
       
                     </tr>
                     <tr><td colspan="2" align="center">  <br />  <br />
                     <a href="modifydonorprofile.jsp"><input type="submit" name="submit" id="submit" value="MODIFY" /></a>
                     </td></tr>
                 </table>
                  </font>
                    </div>
                    
                    
                    
                    
                    <div class="contact_content_right"><br/><br/>
                        <h6><a href="donorprofile.jsp">View Profile</a></h6>
                        
                        <h6><a href="myhistory.jsp">My History</a></h6>
                        
                        <h6><a href="changedonorpassword.jsp">Change Password</a></h6>
                        
                        <h6><a href="complaintdonorform.jsp">Complaint/Suggestion</a></h6>
                        
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
			      <p><a href="donorcontactus.jsp"><font color="green">Contact Us</a> | <a href="donorprivacypolicy.jsp"><font color="green">Privacy Policy</a> </font>

				</div>

		</div>

    </body>

</html>
<% }%>
