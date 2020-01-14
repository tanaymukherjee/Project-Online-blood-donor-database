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
                   
                   <table ><tr>
        <td align="justify">
           <a href="donorcontactus.jsp">Contact Us</a> >> <strong>Helpline</strong>

            
                                      <h1 style="color:Red;">"For You Forever and Ever"
                                      </h1>


<p>Would you like to hear more information or clarifications. You can reach our nearest team members.</p>
</td>
    </tr>
        </table >
<TABLE>
            <TR ALIGN="JUSTIFY"><TD VALIGN="top" ALIGN="JUSTIFY"><br /> <ol>
           <li><strong>Tanay Mukherjee</strong>
           <br>Computer Science Engineer, Indore<br>
	   <a href="mailto: tanay_admin@sahyog.com" class="style2">tanay_admin@sahyog.com</a> 
   <br />
            <a href="mailto: its_tanay_here@yahoo.com" class="style2">its_tanay_here@yahoo.com</a> 
                              <br />

                              <br />

                            </li>

          	<li><strong>Rajkumar Nemani</strong>
			<br />Computer Science Engineer, Indore<br>
			<a href="mailto: raj_admin@sahyog.com" class="style2">raj_admin@sahyog.com</a> 
             <br />
            <a href="mailto: rajkumar.nemani@yahoo.com" class="style2">rajkumar.nemani@yahoo.com</a> 

            

                              <br />

                              <br />

                            </li>

                           
                         	<li><strong>Shikhar Agrawal</strong>
			<br>Computer Science Engineer, Indore<br>
			<a href="mailto: shikhar_admin@sahyog.com" class="style2">Shikhar_admin@sahyog.com</a>
             <br />
            <a href="mailto: shikharagrawal34@gmail.com" class="style2">shikharagrawal34@gmail.com</a> 

                              <br />

                              <br />

                            </li>  
                           
                           	<li><strong>Parag Ravka</strong>
			<br>Computer Science Engineer, Indore<br>
			<a href="mailto: parag_admin@sahyog.com" class="style2">parag.ravka_admin@sahyog.com</a>
            <br />
            <a href="mailto: parag.ravka@gmail.com" class="style2">parag.ravka@gmail.com</a> 

                              <br />

                              <br />

                            </li>

 <p>At the same time, if any of our above volunteer admin members are not responding properly or misusing organisation name, please inform <a href="team.sahyog.here@gmail.com" class="style2">team.sahyog.here@gmail.com</a></p>

                          </ol>
            </td>
    </tr></table>
                   
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

<%}%>