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
             <table width="100%"><tr><td align="center" width="100%"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/></td></tr>
              <tr><td align="center" width="100%"><br />This the logo of our portal <font color="blue"><a href="hospitalhome.jsp">www.sahyog.com</a> </font></td></tr>
              <tr><td align="justify" width="100%"><br /><br /><p1>Rather than calling it as a logo, we will love to call it our strength. Every time we see this logo we tend to get motivated towards our goal to make this country free of blood crisis. A social initiative taken under by team quark to make as many youths possible to join this humanitarian eve.</p1>
              <br /><br><p2>Itâ€™s a social welfare site and we donâ€™t bother about earning any amount from it except blessings of all those needy who face the shortage of blood and get reprieved of their helplessness because of your contribution. We as a family along with you stand to this foundation to help and make every possible drop of blood shared by people been count as a nectar for all citizens. We share the progress with all the donors who support the cause by being a part of this blood donation website.</p2></td></tr>
              <tr><td><br /><br />To start of with the description of the logo:<br /></td></tr>
              <tr><td align="justify">
             <ol type="1">
                 <li><font color="red"><b>RED CROSS- </b></font> An international organization that cares for the wounded, sick, and homeless in wartime, according to the terms of the Geneva Convention of 1864, and now also during and following natural disasters.</li>
                <br /><br /><li><font color="red"><b> ENGINE -</b></font> It denotes our aim. That is to build a search engine as efficient as possible which can help hospitals to locate blood donors of all possible blood groups when required and in turn help those relive their life who may have lost the precious life of theirs without the contribution of fellow citizens. </li>
                <br /><br /><li><font color="red"><b>SAHYOG -</b></font> The name of our site. Simply means support in english literature. What we aim for is maximum participation from all citizens between 18 to 60 years to share their precious blood and earn blessings. You may not have money but you can still donate some of your blood to give someone a new lease of life. Have a big heart. Please donate. We expect your â€œSahyogâ€.</li>
                <br /><br /><li><font color="red"><b>THE SUNSHINE -</b></font> Thatâ€™s the symbol of upliftment of society. This is the final objective of our portal and our team. To make this world knitted into a thread of love where everyone cares for everyone and is ready to help each other. This is going to happen when people selflessly indulge into betterment of their society. And hence the two persons jumping with pride and joy and in background comes the rays of sunlight. Actually a ray of hope. A ray of lost humanity re injected in the world.</li>
                <br /><br /><li><font color="red"><b>OUR TAGLINE - </b></font><i>â€œLittle drops can sprinkle livesâ€;</i> its just not a very phrase but a line of self satisfaction. It is too motivate you all to be a part of this wonderful initiative. Just be a part of it. You are openly invited. You will learn how satisfactory it is too donate blood. You can sense that part of you blood is running into veins of any other person and he is able to live because of you. This is why we feel that a little drop of your blood can help someone get his/her life back. Remember, you need not be a doctor always to save a life, just donate blood, save life.</li>
             </ol>
              </td></tr>
              <tr><td align="center" width="100%"><b>THANK YOU!</b></td></tr>

          </table>  

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
<%} %>
