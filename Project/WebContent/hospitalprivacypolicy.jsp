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
String sql="Select H_NAME from HOSPITAL_REGISTRATION where PEMAILID='"+emailid+"' " ;
rs=st.executeQuery(sql);
if(rs.next())
{

%>


<html>
<head>
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
      <tr><td width="20%"><a href="hospitallogodescription.jsp"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/>
 
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
                     <h5><font color="lightgreen">Welcome&nbsp;&nbsp;<font color="red"><%=rs.getString(1)%></font></h5></font>
                        <br>
                        
                   <font size="2.5">
                   
                   <br/>
             <table ><tr><td align="justify"><div id="content-header">
           <div class=""><a href="hospitalprivacypolicy.jsp">Privacy Policy</a></div>

            
                                      <h1 class="title" style="color:Red;">"We Believe You; Hope You Believe Us"</style>
                                      </h1>
                                      
                                      <p>This statement demonstrates our commitment to your privacy. It also discloses the information gathering and dissemination practices on our web site.</p>
                                    
                                      <h3 class="title" style="color:green;"> Cookies:
                                    </style>
                                      </h3>
                                      
   <p>Our site uses cookies for remembering your site preference. Cookies are sent back to this site only - no information is provided to any entity/organization/individual other than Sahyog.com.</p>
   
   <h3 class="title" style="color:green;">Information Security:
                                    </style>
                                      </h3>
                                      
   <p>Our registration form requires users to give us contact information (like name, e-mail, phone/contact numbers and postal address). Contact information from the registration forms is used to get in touch with the customer when necessary. This information will not be shared with third party organizations.</p>
   
   <h3 class="title" style="color:green;">External Link:
                                    </style>
                                      </h3>
                                      
   <p>Sahyog.com may contain links to other web sites or resources only for the convenience of the users. Organisation is not responsible for the content of these external sites, nor does we endorse, warrant or guarantee the products, services or information described or offered in those sites. It is the responsibility of the user to examine the copyright and licensing restrictions of linked pages and to secure all neccessary permission.</p>
   
   
    <h3 class="title" style="color:green;">Copyrights & Trademarks:
                                    </style>
                                      </h3>
                                      
   <p>All information or content on the Website is the exclusive property of Team-Quark. No information or content on the Website may be copied, modified, reproduced, republished, uploaded, transmitted, posted or distributed in any form without the prior written consent of organisation committee.
   
<p>Sahyog.com trademark shall not be used in any manner without the prior written consent of organisation committee.</p>

<p>Unauthorized use of any information or content appearing on the Website shall violate copyright, trademark and other applicable laws and could result in criminal or civil penalties.</p>

 <h3 class="title" style="color:green;">Disclaimer:
                                    </style>
                                      </h3>
                                      
   <p>The material in this site could include technical inaccuracies or typographical errors. Our service team may make changes or improvements at any time.
   
<p>Service is not rendering professional advice or recommendations. You should not rely on any information on these pages to replace consultations with qualified professionals to meet your individual needs.</p>


   
   </td></tr></table>


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

<%}%>