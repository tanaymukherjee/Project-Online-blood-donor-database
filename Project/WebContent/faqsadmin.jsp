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
                    
                    <h5><font color="lightgreen">Frequently Asked Questions</h5></font>
             
             <div style=" width:100%; height:760px; overflow:auto;">

          
<body>
<name="top"></name>

<p><div class=""><font color="red"><strong>This section is made to clarify some of the most basic but common doubts that come to person's mind when they consider donating blood. Here most of these questions are entitled along with thier answers to help them clear their doubts and possible misconceptions regarding blood donation.</div></p></font></strong>


<script type="text/javascript">
function toggleview(itm)
{
   var itmx = document.getElementById(itm);
   if (itmx.style.display == "none")
   {
      itmx.style.display = "block";
   }
   else
   {
      itmx.style.display = "none";
   }
}
</script>
</head>
<body>
<br>
<br>
<a href="#" onClick="toggleview('q1')"><font color="yellow">1. How long until my blood is used?</a></font>
<div id='q1' style="display:none">
<br>All blood donations are tested and processed and available for use between 24 and 48 hours after collection. Whole blood is separated into its components (red cells, platelets, plasma). After processing, red cells can be stored for up to 42 days; plasma is frozen and can be stored for up to 12 months; and platelets have a shelf-life of only five days.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q2')"><font color="orange">2. How much blood doeas a adult body have?</a></font>
<div id='q2' style="display:none">
<br>An average size adult has a blood volume of about 5 litres.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q3')"><font color="yellow">3. Why do some people faint when they give blood?</a></font>
<div id='q3' style="display:none">
<br>Yes, it is true that some people get faint after donating blood because:

<br><br>A) There is a drop in blood pressure.

<br><br>B) There is emotional stress (blood loss triggers a fight-or-flight response, which directs blood to your muscles, not your brain).

<br><br>C) And also because standing up quickly drains blood from your head.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q4')"><font color="orange">4. What can I do to prevent fainting after giving blood?</a></font>
<div id='q4' style="display:none">

<br>Follow the instructions of the nurse who drew your blood. Even if you feel great, lie around for a while. Then sit up slowly, sit for a while, then stand up slowly.

<br><br>"If you feel woozy after giving blood, you're no wimp. About 150,000 people faint or come close to fainting each year. It's a physiological phenomenon you can counteract by drinking 16 ounces of water about a half hour before giving blood. The water slows heart rate and improves bloodflow, especially to the brain."
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q5')"><font color="yellow">5. How long does it take to donate?</a></font>
<div id='q5' style="display:none">

<br>They advertize that it takes about an hour, but it took one hour and fifty-five minutes for us one time, even with an appointment and being a previous donor.


<br><br>First you may be asked to read info, then you will fill out a couple of forms, answering a bunch of questions to see if you are okay to donate.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q6')"><font color="orange">6. How do they get the blood out of you?</a></font>
<div id='q6' style="display:none">

<br>They will poke you twice, once in a finger to get a drop of blood for an initial test, then when they draw your blood donation.

<br><br>Okay, yes, this is when it hurts a little, but just for a few seconds. While you lie down on a very large well-padded lounge chair, the nurse puts a needle in a vein in your arm. No, the needle is not the size of a drainpipe.

<br><br>For some people, if you are warm the vein is easier to find, so if a nurse has had trouble finding yours, keep a sweater on next time.

<br><br>Once the needle is in place it doesn't really hurt and you might not even notice it. Then, when the nurse tells you to, you start squeezing something like a a rubber ball that they give you once every five seconds. It takes about eight to ten minutes to pump out a pint. Racing to pump blood faster than your friend at the next table is not advised.

<br><br>There will be one or more nurses in the room the whole time you and other people are donating. If it is your first time they pay special attention to you.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q7')"><font color="yellow">7. How often can I donate blood?</a></font>
<div id='q7' style="display:none">
<br>If you don't change your life in a way that could prevent you from donating, you can safely donate every twelve weeks i.e. 3 months period.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q8')"><font color="orange">8. Who gets blood donations?</a></font>
<div id='q8' style="display:none">
<br>Every three seconds, someone needs blood. People donate a unit of blood, about a pint. Usually each unit of whole blood is separated into various components, such as red blood cells, plasma, platelets, and cryoprecipitated AHF (antihemophilic factor). Each component generally is given to a different person according to their needs.

<br><br>Needs include: in a car accident up to 50 units of blood; bone marrow transplant 20 units of blood, 120 units of plasma; organ transplant 40 units of blood, 30 units of platelets, 25 units of plasma; burns 6 units of platelets; heart surgery 6 units of blood. It is not unusual for young leukemia patients to need eight units of blood a week.

<br><br>Red blood cells have a 42-day shelf life and platelets only 5 days, so the supply must be constantly replaced. From a Red Cross leaflet:

<br><br>"As soon as 24 hours after donating, your blood could be helping patients. Your blood's plasma might be saving a young hemophiliac, your platelets might be helping a cancer patient, while your white blood cells might be helping a newborn fight a serious infection."

<br><br>More than 75 percent of Indians reaching age 72 will require a blood transfusion sometime in their lifetimes. More than 95 percent of Indians will have a relative or friend who will need blood.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q9')"><font color="yellow">9.Is it true that donating blood can make me healthier?</a></font>
<div id='q9' style="display:none">
<br>"We all know giving blood helps others, but did you know donating blood is also a healthy habit for yourself?

<br><br>Before donating ?lood, everyone must pass a mini-physical and a medical history examination. During the physical, your blood pressure, pulse, temperature and your hematocrit level (the level of red cells in your blood) are checked. Sometimes physical problems such as high blood pressure are found during a blood donation mini-physical. So donating blood can be a way to keep a check on your own health while helping others.

<br><br>Preliminary studies also found that heart attacks and other cardiac problems were less common in men who had donated blood compared to men who had not. Researchers believe by giving blood, men -- and post-menopausal women -- rid their bodies of excessive iron, which is thought to contribute to heart disease. While the medical community is still not certain if a link exists between blood donation and reduced risk of heart attack, giving blood certainly doesn't harm a donor and helps patients who need blood."
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q10')"><font color="orange">10.What precautions should I take after donating blood?</a></font>
<div id='q10' style="display:none">
<br>Following are the basic precautions one must take after donating blood.

<br><br>A) Drink an extra four glasses (8 ounces each) of non-alcoholic liquids...Because you could experience dizziness or loss of strength, use caution if you plan to do anything that could put you or others at risk of harm. For any hazardous occupation or hobby, follow applicable safety recommendations regarding your return to these activities following a blood donation.

<br><br>B) Do not lift or carry heavy objects that day. Do not do strenuous exercise that day.

<br><br>C) One must avoid smoking because they are more likely to feel the effects of nicotine and therefore faint.

<br><br>D) People who take alcohol within a few hours of giving blood are more likely to feel faint because alcohol dilates the blood vessels. This causes less blood to be available to circulate to the brain leading to dizziness and fainting.

<br><br>E) Being in a hot room also causes the blood vessels to dilate and thus has a similar effect to alcohol.

<br><br>F) Standing still for long periods of time can lead to pooling of blood in the legs, a situation similar to soldiers on parade. This reduces the amount of blood available to the brain.
</div>
</body>


<HR>
<a href="#" onClick="toggleview('q11')"><font color="yellow">11.Where is the donated blood send?</a></font>
<div id='q11' style="display:none">
Distribution of the blood and blood products to hospitals is determined by when, where and how much blood will be needed at any given time. In emergencies, blood can be transported between hospitals, towns and states/territories so that we can ensure that the blood is available when it is needed.
</div>
</body>

<HR>
<a href="#" onClick="toggleview('q12')"><font color="orange">12. Genarally who all are not eligible to donate blood?</a></font>
<div id='q12' style="display:none">
<br>Following are the cases which doesnot allows a person to donate blood :

<br><br>A) If your age is below 16 years.

<br><br>B) If your age is above 70 years.

<br><br>C) If you recently got tattooed anywhere in your body. In such a case come after six months when your pride and joy is over.

<br><br>D) If a women has given birth to a baby. Then she is not allowed to be a part of blood donation for six months from the birth of child.

<br><br>E) If you have got a serious heart condition. Sorry, we hope that person enjoys good health but fact is in such a position he is deprieved of donating blood forever.

<br><br>F) If your blood is checked and found that iron content is less then in such a situation, a physicist suggests to improve your diet. Until the iron level in your blood is withinn the normal proportion you are not allowed to donate blood.

<br><br>G) If your blood is found positive to use of any intravenous recreational drugs. Until prescribed by doctor or dentist, you are very much unlikely to donate blood even once.

<br><br>H) ?ther than this, if you are HIV positive or have hepatitis B or hepatitis C. To be very frank, you can't donate blood in your comlete lifetime.
</div>
</body>

<br><br>
<A href="#top"><input type="button" value="Back To Top" /></A>
                     

                   </font>

                   
                   
                    </div> </div>
                    
                    
                    
                    
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