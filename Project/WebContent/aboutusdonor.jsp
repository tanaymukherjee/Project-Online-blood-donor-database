<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
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
                   <font size="2.5">
                   <h5><font color="lightgreen">About Us</h5></font>
             
             <div style=" width:100%; height:760px; overflow:auto;">

          
<body>
<name="top"></name>
<br>
<h2 class="title" style="color:Red;">"Who We Are & Why We Are Here!"
                                      </h2>
<br>

<p>Have you at anytime witnessed a relative of yours or a close friend searching frantically for a blood donor, when blood banks say out of stock, the donors in mind are out of reach and the time keeps ticking? Have you witnessed loss of life for the only reason that a donor was not available at the most needed hour? Is it something that we as a society can do nothing to prevent? This thought laid our foundation.</p>
</FONT>
<br>
 <h2 class="title"><font color="red"> "Our Vision, Our Mission, Our Motto"</font></h2>
                                  <br>   
   <p><strong><font color="yellow">Our Vission:</strong></p></font>
   
   <p>To improve the lives of patients through the power of humanity.</p>
<br>
 <p><strong><font color="yellow">Our Mission:</strong></p></font>
   
   <p>To perform a critical role in healthcare by providing a safe, secure and cost effective supply of quality blood products, essential services and leading edge research to meet the needs of patients. The vision of the "Team-Quark" is to be a prominant brand for Consumer Services through Internet and Mobile in India thereby providing a common platform for those who have a zeal to support the needy.</p>
   <br>
   <p><strong><font color="yellow">Our Motto:</strong></p></font>
   
   <p>Its always not necessary to be a doctor to save lives, just donate blood, save lives!</p>
   
   <HR>
    <p><font color="orange">Join us in our march towards helping our brothers and sisters in need!</p></font>
    
    </td></tr></table></td>
                   </font>

                   
                   
                    </div>
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
