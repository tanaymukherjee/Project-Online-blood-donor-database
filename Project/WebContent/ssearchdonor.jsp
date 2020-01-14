
<%@page import="javax.mail.Session"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*"%>
                  <%     
searchdonor s=new searchdonor();
Authorized a1=new Authorized(request, response);
String state1=a1.getstate();
String city1=a1.getcity();
String bldgrp1=a1.getbg();    


%>


<%!
ResultSet rs;
Statement st,st1;
Connection con;
int rowEnd,rowStart;
int pageNum,maxRecords,totalPages,next,previous;
 %>
<%

rs=null;
st=null;
con=null;
String strPageNum=request.getParameter("pageno");
pageNum=1;
next=2;
if(strPageNum!=null)
{
    pageNum=Integer.parseInt(request.getParameter("pageno"));
    next=pageNum+1;
    previous=pageNum-1;
}
int rowEnd=pageNum*5;//*maxRowsPerPage;
int rowStart=(rowEnd-5)+1;
con=Mycon.getConnection();
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
st1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
String sql="Select * from (SELECT FIRST_NAME,LAST_NAME,GENDER,BLOOD_GROUP,STATE,CITY,DONOR_STATUS,POINTS,DDATE, ROW_NUMBER() OVER () AS RN FROM DONOR_REGISTRATION where STATE='"+state1+"' and CITY='"+city1+"' and BLOOD_GROUP='"+bldgrp1+"') AS col where RN between "+rowStart+" and "+rowEnd+" order by POINTS asc " ;
rs=st.executeQuery(sql);
ResultSet rs1=st1.executeQuery("SELECT count( * ) as total_record FROM DONOR_REGISTRATION where STATE= '"+state1+"' and CITY= '"+city1+"' and BLOOD_GROUP= '"+bldgrp1+"' ");
rs1.next();
maxRecords=rs1.getInt(1);
totalPages=maxRecords/5;
int remain = maxRecords%5;
if(remain!=0) totalPages++;
%>

<html>
<head>
  <script type="text/javascript" language="javascript" src="lib/search.js"></script>
       <script language="JavaScript" src="lib/search.js"></script>
	<script type='text/javascript' src="lib/verifymail.js"></script>
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
						<li><a href="index.html" class="active">Home</a></li>
						<li><a href="lawsandfacts.html">Laws & Facts</a></li>
						<li><a href="faqs.html">FAQs</a></li>
						<li><a href="feedback.html">Feedback</a></li>
						<li><a href="aboutus.html">About Us</a></li>
					</ul>
				</div>
                <br>
                <br>
               
                <div class="logo_text">
				
     <table>			
      <tr><td width="20%"><a href="logodescription.html"><img src="images/final logo.JPG" width="200" height="100" alt="final logo"/>
 
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
                    <div class="contact_content_left">
                    

                        <h5><font color="lightgreen">Search Donor</h5></font>
             
             <div style=" width:100%; height:760px; overflow:auto;">

          
<body>
<name="top"></name>
        <table border="1"><thead>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Gender</th>
<th>Blood grp</th>
<th>State</th>
<th>City</th>

</tr>
</thead>

<%
Calendar now = Calendar.getInstance();
String ddate=(now.get(Calendar.YEAR)+ "-" +(now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE)  ).toString();
String dateParts1[] = ddate.split("-");
int year1  = Integer.parseInt(dateParts1[0]);
int month1  = Integer.parseInt(dateParts1[1]);
int date1 = Integer.parseInt(dateParts1[2]); 
Calendar cal2 = new GregorianCalendar();
cal2.set(year1,month1,date1);
while(rs.next())
    {  
	    String str1 = rs.getString("DDATE");
		String dateParts[] = str1.split("-");
		int year  = Integer.parseInt(dateParts[0]);
		int month  = Integer.parseInt(dateParts[1]);
		int date = Integer.parseInt(dateParts[2]); 
		Calendar cal1 = new GregorianCalendar();
		cal1.set(year,month,date); 
		int j = s.daysBetween(cal1.getTime(),cal2.getTime());
		if(j>=90)
		{
%>

<tr align="center">
<td>&nbsp;&nbsp;&nbsp; <%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%>&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%>&nbsp;&nbsp;&nbsp;</td>

</tr>
<%  } %>                              <%
                        }
              
            rs.close();           
            rs=null;
%>
 </table></td> 
 
 <div class="pagination" align="center">
             <%
                        if(previous==0)
                            {
             %>
          &nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled">Prev</span>&nbsp;&nbsp;&nbsp;&nbsp;
          <%
          }
            else
                {
          %>
           <a href="ssearchdonor.jsp?pageno=<%=previous%>">Prev</a>
       <%
}
                  for(int i=pageNum;i<pageNum+5;i++)
           {
                        if(i<=totalPages)
                       {
                               if(i==pageNum)
                               {
        %>
                                                          &nbsp;&nbsp;&nbsp;&nbsp; <span class="current"><%=pageNum%></span>&nbsp;&nbsp;&nbsp;&nbsp;
        <%                 }
                                else
                                {
        %>               
                                 <a href="ssearchdonor.jsp?pageno=<%=i%>"><%=i%></a>
       <%
                                }
                        }
                  }
                        if(next>=totalPages)
                            {
                            
      %>                         &nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled">Next</span>&nbsp;&nbsp;&nbsp;&nbsp;
     <%                 }
                            else
                            {
     %>                             <a href="ssearchdonor.jsp?pageno=<%=next%>">Next</a>      
    <%
                             }
    %>
   
    </div>
 
 
    </div>
                   </div> 
                   


                   <div class="contact_content_right">
                      <form action="slogin.jsp" method="POST" name="form" onSubmit="return verifyEmail();">
                        <div class="box1">
                    	<h2><font color="lightgreen">Sign In</h2>
                      <font color="lightgreen"><B>User Id</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><input type="text" name="userid" value="" />
      <br /> <br /> <font color="lightgreen"><B>Password</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> <input type="password" name="password" value="" /> 
      <br>
      <br>
      
      <input type="submit" value="Login" /> <a href="forgot_psswd_1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="lightgreen"><u>Forgot Password&nbsp;?</u></font></a>
      
      <br>
      <br>
      
      
   
           <font color="lightgreen"><b>Not member yet? Click below to register.</b>
      <ul> 

					<li><a href="userregistration.html">Donor Registration</a></li> 

					<li><a href="hospitalregistration.html">Hospital/ Blood Bank Registration</a></li> 
</ul>
      
       </td></tr>
    
                    </div>
                    
                </form>
                  	<!-- /.box1 -->
                  </div>
              	  <div class="metam2">
                  	<!-- .box1 -->
 <form action="ssearchdonor1.jsp" method="post" name="SEARCH" onSubmit="return Valid1();">
                  	<div class="box1">
                    	<h2>Find a Donor</h2>
                      <font color="lightgreen"><B>State</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select select name="state" id="state" onChange="setCities();"> <option> ---Select State---</option> 
<option>Andhra Pradesh</option><option>Arunachal Pradesh</option><option> A n N Islands</option><option>Assam</option><option>Bihar</option><option>Chandigarh</option><option>Chhattisgarh</option><option>Dadra and Nagar Haveli</option><option>Daman and Diu</option><option>Delhi</option><option>Goa</option>
<option>Gujarat</option><option>Haryana</option><option>Himachal Pradesh</option><option>Jammu and Kashmir</option><option>Jharkhand</option><option>Karnataka</option><option>Kerala</option><option>Lakshadweep</option><option>Madhya Pradesh</option><option>Maharashtra</option>
<option>Manipur</option><option>Meghalaya</option><option>Mizoram</option><option>Nagaland</option><option>Orissa</option><option>Pondicherry</option><option>Punjab</option><option>Rajasthan</option><option>Sikkim</option><option>Tamil Nadu</option><option>Tripura</option>
<option>Uttar Pradesh</option><option>Uttarakhand(Uttaranchal) </option><option>West Bengal</option></select>
<br /><br />

<B>City</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="city"  id="city" > <option> ---Select City---</option></select>
<br /><br />

<B>Group</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="bloodgrp"> <option value=""> ---Select Blood Group---</option> <option>A+</option>
    <OPTION VALUE="A-">A-</OPTION>

		<OPTION VALUE="B+">B+</OPTION>
		<OPTION VALUE="B-">B-</OPTION>
        <OPTION VALUE="AB+">AB+</OPTION>
		<OPTION VALUE="AB-">AB-</OPTION>
        <OPTION VALUE="O+">O+</OPTION>
		<OPTION VALUE="O-">O-</OPTION>
        <OPTION VALUE="A1+">A1+</OPTION>
        <OPTION VALUE="A1-">A1-</OPTION>
        <OPTION VALUE="A2+">A2+</OPTION>
        <OPTION VALUE="A2-">A2-</OPTON>
        <OPTION VALUE="A1B+">A1B+</OPTION>
        <OPTION VALUE="A1B-">A1B-</OPTION>
        <OPTION VALUE="A2B+">A2B+</OPTION>
        <OPTION VALUE="A2B-">A2B-</OPTION></select>
    <br>
    <br>
</font><input type="submit" value="Search"  />
&nbsp;</td></tr>
</form>
 </div>
                   
                    <div class="box1">
                    	<h2>Other Links</h2>
                      <ul class="list1">
                      <br>
                      <b><Font color="yellow">
                         <li>&gt;&gt; <a href="bloodrequest.html">Post Blood Request</a></li> 
                         <li>&gt;&gt; <a href="rotaryclub.html">Rotary Club Participation</a></li>
                      	<li>&gt;&gt;  <a href="invitefriend.html">Invite Your Friends</a></li>
                        <li>&gt;&gt;  <a href="other.html">Other Social Welfare Sites</a></li>
                        <li>&gt;&gt;  <a href="gallery.html">Photo Gallery</a></li>
                        <li>&gt;&gt;  <a href="donorsspeaks.jsp">Donor's Speak</a></li>
                        </b></font>
                        </ul>
                                     </div>
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
			      <p><a href="contactus.html"><font color="green">Contact Us</a> | <a href="privacypolicy.html"><font color="green">Privacy Policy</a> </font>

				</div>

		</div>

    </body>

</html>

