﻿<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.jsp");
    return;
}
ResultSet rs;
Statement st;
Connection con;
con=Mycon.getConnection();
String emailid=a.getemailid();
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
String sql="Select FIRST_NAME,POINTS,LAST_NAME from DONOR_REGISTRATION where EMAIL_ID='"+emailid+"' " ;
rs=st.executeQuery(sql);
if(rs.next())
{

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
                     <h5><font color="lightgreen">Welcome&nbsp;&nbsp;<font color="red"><%=rs.getString(1)%>&nbsp;&nbsp;<%=rs.getString(3)%>&nbsp;&nbsp;</font></h5></font>
                        <br>
                        
                   <font size="3">
                  
                <h3><font color="red"> "Tell us your problem, we will like to help you"</font></h3>
                <br/><br/>
                <p>Hey, you are before a donor, our respected friend. We will be obliged if you share with us your views and problems. We won't cosider it as a complaint, rather will love to find a way to fix it. We need your support to build ourselves.<br/><br/></p>
                <form action="complaintdonor.jsp" name="COMPDONOR"method="POST" onsubmit="return comp();">
                    <FIELDSET style="border-color: #CCCCCC; border-style: solid; border-width: 1px; -moz-border-radius: 1px;">
                <table>
                    <tr>
                        <td><FONT face="Arial, Helvetica, sans-serif" size="2" class="header1"><B> Suggestion/Complaint Form</B></FONT><br/><br/></td>
                    </tr>
                    <tr>
                        <td><br /><br /><b>To:</b></td>
                        <td><br /><br /><input type="text" name="toadmin" value="team.sahyog.here@gmail.com" readonly="readonly" disabled="disabled" size="40"/></td>
                    </tr>
                    <tr>
                        <td><br /><br /><b>Subject:</b></td>
                        <td><br /><br /><input type="text" name="subject" value="" size="40"/></td>
                    </tr>
                    <tr>
                        <td><br /><br /><b>Complaint:</b></td>
                        <td><br /><br /><textarea name="complaint" rows="10" cols="30">
</textarea></td>
                    </tr>
                    <tr>
                    <td colspan="2" align="center"><br /><br /><input type="submit" value="  Post   "  size="5"/><br /><br /></td>
                    </tr>
                </table></FIELDSET></form>
<p><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/></p>
    
                   
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
<%} %>
