<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.jsp");
    return;
}


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
                        
                   <font size="2.5">
                   <p align="justify"><br />Hello Friend.</p>
<p align="justify"><br /><br />This section tells you about the history of your blood donation status. This reminds you about all the history of your donations. When you donated the blood; this hstory helps you to earn preference points which will help in the case you are on the recipient end.</p>
<p align="justify"><br /><br />Fact that the person with high preference rating will get the benefit of our site first, so we request you to upgrade us with all your blood donations you made.</p>
<p align="justify"><br /><br />Thank You!<br /><br /></p>
            
                
    <table border="0"><thead>
<tr>
<th width="9.16%">Date</th>
<th width="9.16%">Hospital Name</th>
<th width="9.16%">Hospital Location</th>
<th width="9.16%">City</th>
</tr>

</thead>


<%

 String emailid=a.getemailid();
Donorprofile d=new Donorprofile(emailid);
ResultSet rs=d.getdonorhistory();

while(rs.next())
{
       
       d.donorprofile1(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
     
  
%>    

<tr>

<td align="center"><%=d.getD2()%></td>
<td align="center"><%=d.getHname()%></td>
<td align="center"><%=d.getHlocation()%></td>
<td align="center"><%=d.getCity()%></td>
</tr>
<% }%>
</table>
<table align="right"> <tr><br /><td align="right"><br /><br /><a href="updatehistory.jsp"><input type="submit" value="Update New History" ></a></td></tr></table>
<p><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>
    
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

