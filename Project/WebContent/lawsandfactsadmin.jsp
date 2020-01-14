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
String sql="Select ADMIN_NAME from ADMIN where EMAIL_ID='"+emailid+"' " ;
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
                    <div class="contact_content_left" align="justify">
                     <h5><font color="lightgreen">Welcome&nbsp;&nbsp;<font color="red"><%=rs.getString(1)%>(ADMIN)</font></font></h5>
                        <br>
                        
                   <font size="2.5">
                   <h5><font color="lightgreen">Laws And Facts</h5></font>
             
             <div style=" width:100%; height:760px; overflow:auto;">

          
<body>
<name="top"></name>

<h1 class="title" style="color:Red;">Rules & Regulations; Norms & Instructions</style>
                                      </h1>


<br>
<p >You can save a life by donating blood. Voluntary blood donation takes place when a healthy individual voluntarily donates blood. Most of the donors donate their blood free of cost as an act of charity. Let&rsquo;s understand the basic facts relating to blood donation before we discuss Indian laws relating to it.</p>
<br>

<h3 class="title" style="color:yellow;">Indian Laws on Blood Donation:&nbsp; How Donors Confirm Safety through Tests</style></h3>
<p>The prospective donors undergo various tests to confirm, whether their blood is safe to use or not. The tests are conducted to check for diseases like HIV, viral hepatitis and other fatal diseases.</p>

<p>Voluntary blood donors constitute the fastest and safest source of blood &lsquo;contribution&rsquo; to save the lives of thousands of people every day. In India, any healthy individual between the age of 18 to 60 years can donate blood up to 168 times. For instance, the Indian Red Cross Society (IRCS) is a charitable organization that alone has more than 12 million volunteers. In fact, the IRCS contributes towards ten percent towards country&rsquo;s total blood collection.</p>

<br>
<h3 class="title" style="color:yellow;">Indian Laws on Blood Donation: Objectives of The National Blood Policy, 2002</style></h3>

<p>A systematic Blood Transfusion Service (BTS) is required to eliminate transfusion transmitted infections and diseases. For quality, safety and efficacy of blood transfusion, the National Blood Policy, 2002 was formulated by the government. The policy aims towards easy access and sufficient supply of safe and quality blood.</p>

<br>
<p><font color="orange">Few important objectives of the policy are:</p></font>
<br>

<li> To fulfill the commitment to provide safe, adequate and quality blood and blood components.
<li> To ensure the availability of adequate resources to develop a systematic model of efficient and effective blood transfusion services throughout India.
<li>To ensure the availability of modern technology available for blood transfusion operations and upgrade them from time to time.
<li>To initiate education and awareness programmes for donors.
<li>To motivate and retain them.
<li>To promote suitable clinical use of blood and blood components.
<li>To ensure availability of adequate trained manpower.
</ul>
<p>

<br>
  <h1 class="title" style="color:Red;">Interesting Facts:</style>
                                      </h1>
<br>
<h3 class="title" style="color:yellow;">Did You Know?</style></h3>
			
				
					<li>Blood is the life-maintaining fluid that circulates through the body's heart, arteries, veins and capillaries.
					<li>Blood carries to the body nourishment, electrolytes, hormones, vitamins, antibodies, heat, and oxygen.
					<li>Blood carries away from the body waste matter and carbon dioxide.
					<li>Blood fights against infection and helps heal wounds, keeping you healthy.
					<li>Blood makes up about 7% of your body's weight.
					<li>A newborn baby has about one cup of blood in his or her body.
					<li>White blood cells are the body's primary defence against infection.
					<li>Granulocytes, a type of white blood cell, roll along blood vessel walls to search and destroy bacteria.
					<li>Red blood cells carry oxygen to the body's organs and tissues.
					<li>There are about one billion red blood cells in two to three drops of blood.
					<li>Red blood cells live about 120 days in the circulatory system.
					<li>Blood platelets help clotting and give those with leukemia and other cancers a chance to live.</ul><br>
				<br>
                <h3 class="title" style="color:yellow;">Where did blood typing come from?</style></h3>
                
<p>In 1901, an Austrian scientist, Karl Landsteiner, found that reactions between these antigens, and other substances in plasma (called antibodies) sometimes cause the red blood cells to clump together, resulting in adverse reactions in transfusion recipients. After further experiments, he found four blood groups based on the presence or absence of two specific antigens which we now know as A and B.</p>
<p>This discovery paved the way for a system of blood grouping called the ABO system.</p>
<p>In 1939 and 1940, research involving rhesus monkeys identified another grouping factor which was called the Rhesus Factor (Rh factor). People, regardless of their ABO blood group, who were found to have a D antigen present were grouped as Rh positive and those without the D antigen were grouped as Rh negative. The rhesus group is indicated by a '+' (Rh positive) or '-' (Rh negative) after a person's ABO type e.g. A+ or O-. All these groups are genetically based. People who are Rh negative may develop an antibody (called anti-D) if they are exposed to the D antigen during pregnancy or a blood transfusion.</p>
    
      

                   </font>

                   
                   
                    </div>
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

<%} %>