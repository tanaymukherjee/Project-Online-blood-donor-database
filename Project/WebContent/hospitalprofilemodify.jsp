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
hospitalprofile h=new hospitalprofile(emailid);
ResultSet rs=h.gethospitalprofile();

if(rs.next())
{
       
       h = new hospitalprofile(rs.getString(1),rs.getString(3),emailid,rs.getString(5),rs.getLong(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getLong(10),rs.getString(11));
   

%>


<html>
<head>
<script type="text/javascript" src="lib/hosprf.js"></script>
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
						<li><a href="hospitalhome.jsp" class="active">Home</a></li>
						<li><a href="lawsandfactshospital.jsp">Laws & Facts</a></li>
						<li><a href="faqshospital.jsp">FAQs</a></li>
						<li><a href="feedbackhospital.jsp">Feedback</a></li>
						<li><a href="aboutushospital.jsp">About Us</a></li>
					</ul>
				</div>
                <br>
                <br>
               
                <div class="logo_text">
		<table>			
      <tr><td width="20%"><a href="hospiatllogodescription.jsp"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/>
 
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
                     <h5><font color="lightgreen">Welcome to your Hospital Profile</h5></font>
                        <br>
                        
                   <font size="2.5">
                    
                    <br />
         
                 <h2 class="title" style="color:Red;">"Your Personal Info"</h2>
                 <br /><br />
                 <p>Hello Sir/Madam. Here you can see the personal details of yours and can modify it if required. Though there are few selective portions which are open to subject of updation. If other details you want to modify whose permission we don't give due to security, then contact us via the provided complaint/suggestion form. Thank You.<br /><br /></p>  
                 <form action="updatehospitalprofile.jsp" method="post" name="HOS_PROFILE" onsubmit="return update();">
                 <table border="0">
                     <tr>
                         <td><b>Hospital Name</b></td>
                    <td>
                        <INPUT type=text name="hname" readonly="readonly" VALUE="<%=h.getHname()%>">
                	</td>
                     </tr>
                     <tr>
                         <TD><b>Hospital Registration No</b></TD>

	<TD>
	<INPUT type=text name="hregistrationno" readonly="readonly" VALUE="<%=h.getHregistrationno()%>">
	</TD>
                     </tr>
                     <tr>
                         <TD><b> Primary Email ID</b></TD>
	<TD>
	<INPUT type=text name="pemailid" readonly="readonly" VALUE="<%=h.getPemailid()%>" />
	</TD>
                     </tr>
                     <tr>
                        <TD><b>Secondary Email ID</b></TD>
        <td><input type="text" name="semailid" id="semailid"  VALUE="<%=h.getSemailid()%>"/>
        </td> 
                     </tr>
                     <tr>
                        <TD><b>Contact No</b></TD>
	<TD>
        <input type="text" name="contactno" id="contactno" VALUE="<%=h.getContactno()%>" />
        </TD> 
                     </tr>
                     <tr>
                        <TD><b>Hospital Web Site</b></TD>
	<TD>
        <input type="text" name="hwebsite" size="30"    VALUE="<%=h.getHwebsite()%>"/>
      </TD> 
                     </tr>
                     <tr>
                       <TD><b>State</b></TD>
	<TD>
        <input type="text" name="state"  readonly="readonly" VALUE="<%=h.getState()%>"/>
      	  </TD>   
                     </tr>
                     <tr>
                         <TD><b>City</b></TD>
	<TD>  
        <input type="text" name="city"  readonly="readonly" VALUE="<%=h.getCity()%>" />
    </TD>
                     </tr>
                     <tr>
                         <TD><b>Pincode</b></TD>
	<TD>  
        <input type="text" name="pincode" readonly="readonly"  VALUE="<%=h.getPincode()%>" />
    </TD>
                     </tr>
                     <tr>
                         <TD><b>Permanent Address</b></TD>
	<TD>
	<input type="text" name="address" size="40" readonly="readonly" VALUE="<%=h.getAddress()%>" />

	</TD>
       
                     </tr>
                     <tr><td colspan="2" align="center"><br /><br />
                     <input type="submit" name="submit" id="submit" value="Submit" />
                     </td></tr>
                 </table></form>
                    
                   </font>

                   
                   
                    </div>
                    
                    
                    
                    
                    <div class="contact_content_right"><br/><br/>
                        <h6><a href="hospitalprofile.jsp">View Profile</a></h6>
                                          
                        <h6><a href="changehospitalpassword.jsp">Change Password</a></h6>
                        
                        <h6><a href="searchdonorhospitalform.jsp">Search Donor</a></h6>
                        
                        <h6><a href="complainthospitalform.jsp">Complaint/Suggestion</a></h6>
                        
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
			      <p><a href="hospitalcontactus.jsp"><font color="green">Contact Us</a> | <a href="hospitalprivacypolicy.jsp"><font color="green">Privacy Policy</a> </font>

				</div>

		</div>

    </body>

</html>

<% }%>