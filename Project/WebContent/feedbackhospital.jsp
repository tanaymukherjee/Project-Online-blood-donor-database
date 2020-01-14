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
                   <form action="sfeedback.jsp"  name="FEEDBACK" method="POST" onSubmit="return Valid();">
                    <h5><font color="lightgreen">Feedback Form </h5></font>
                           <div class="box1">
 <FIELDSET style="border-color: #CCCCCC; border-style: solid; border-width: 1px; -moz-border-radius: 1px;">
<!-- this is the title -->
<LEGEND><FONT face="Arial" size="2" class="header1"><B> <font color="red">Your Details </B></FONT></LEGEND></font>


<TABLE>
 <br>
   <TR>
	<TD><strong>First Name*</strong></TD>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<INPUT type=text name="firstname">
	</TD>

</TR>

<TR>
	<TD><strong>Last Name*</strong></TD>

	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<INPUT type=text name="lastname">
	</TD>
</TR>

<TR>
	<TD><strong>User Id*</strong></TD>

	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<INPUT type=text name="validemailid">
	</TD>

</TR>

<TR>
<TD><strong>Password*</strong></TD>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="password" name="password" />
	</TD>

</TR>
</TABLE>
<br>
</FIELDSET>




<TR>
<TD >
<BR />
<FIELDSET style="border-color: #CCCCCC; border-style: solid; border-width: 1px; -moz-border-radius: 1px;">
<!-- this is the title -->
<LEGEND><FONT face="Arial" size="2" class="header1"><B><font color="red"> Your Story </B></FONT></LEGEND></font>
<TABLE >
 <br>
   <TR>
	<TD><strong>Story*</strong></TD>
	<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="form-required" title="This field is required."></span></label>
 <textarea cols="40" rows="20" name="story" id="edit-submitted-your-story-story"  class="form-textarea required"></textarea>
 	</TD>
</TR>


</TABLE>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</FIELDSET>

</TD></tr>


<TR><td>
<label><br><br><strong><font color="yellow">Disclaimer: </strong><span class="form-required" title="This field is required.">*<strong></strong></span></label></font>
</td></tr>
<br>
<TD>
<input type="checkbox" name="agrrement" value="confirmation" /> I have read, understood and agree to the <a href="termsconditionshospital.jsp">terms and conditions</a> of making a submission to "My Feedback"
</TD>
</TR>   

<TR><br>
	<TD COLSPAN=2>
<br>
	<INPUT type="submit" value="Submit">

	
</TR></form>
                   
                   </font>

                   
                   
                    </div></div>
                    
                    
                    
                    
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
