
<%@page import="javax.mail.Session"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="mypack.*,java.sql.*" session="false"%>
<%
response.addHeader("cache-control", "no-cache");  
Authorized a=new Authorized(request, response);
if(!a.isValidSession())
    {
    response.sendRedirect("index.html");
    return;
    }
%>

<%
searchdonor s=new searchdonor();
String state1=a.getstate();
String city1=a.getcity();
String bldgrp1=a.getbg();    


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
int rowEnd=pageNum*3;//*maxRowsPerPage;
int rowStart=(rowEnd-3)+1;
con=Mycon.getConnection();
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
st1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
String sql="Select * from (SELECT FIRST_NAME,LAST_NAME,EMAIL_ID,GENDER,BLOOD_GROUP,MOBILE_NO,LANDLINE_NO,STATE,CITY,PINCODE,ADDRESS,DONOR_STATUS,DDATE,POINTS, ROW_NUMBER() OVER () AS RN FROM DONOR_REGISTRATION where STATE='"+state1+"' and CITY='"+city1+"' and BLOOD_GROUP='"+bldgrp1+"') AS col where RN between "+rowStart+" and "+rowEnd+" order by POINTS asc " ;
rs=st.executeQuery(sql);
ResultSet rs1=st1.executeQuery("SELECT count( * ) as total_record FROM DONOR_REGISTRATION where STATE= '"+state1+"' and CITY= '"+city1+"' and BLOOD_GROUP= '"+bldgrp1+"' ");
rs1.next();
maxRecords=rs1.getInt(1);
totalPages=maxRecords/3;
int remain = maxRecords%3;
if(remain!=0) totalPages++;
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
                   <table><tr><td> <div class="contact_content_left" align="justify">
                     <h5><font color="lightgreen">Welcome to your Hospital Profile</h5></font>
                        <br>
                        
                   <font size="2.5">
                   
                   <form action="searchhadonor.jsp" method="post" name="SEARCH" onsubmit="return Valid1();">
                  <br/>
               <font color="red" size="5">Find A Donor<br /><br /></font>
    <font color="black"><b>State:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="state" id="state" onchange="setCities();"> <option> ---Select State---</option> 
<option>Andhra Pradesh</option><option>Arunachal Pradesh</option><option> A n N Islands</option><option>Assam</option><option>Bihar</option><option>Chandigarh</option><option>Chhattisgarh</option><option>Dadra and Nagar Haveli</option><option>Daman and Diu</option><option>Delhi</option><option>Goa</option>
<option>Gujarat</option><option>Haryana</option><option>Himachal Pradesh</option><option>Jammu and Kashmir</option><option>Jharkhand</option><option>Karnataka</option><option>Kerala</option><option>Lakshadweep</option><option>Madhya Pradesh</option><option>Maharashtra</option>
<option>Manipur</option><option>Meghalaya</option><option>Mizoram</option><option>Nagaland</option><option>Orissa</option><option>Pondicherry</option><option>Punjab</option><option>Rajasthan</option><option>Sikkim</option><option>Tamil Nadu</option><option>Tripura</option>
<option>Uttar Pradesh</option><option>Uttarakhand(Uttaranchal) </option><option>West Bengal</option></select>


<b>City:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="city"  id="city" > <option> ---Select City---</option></select>
<b>Group:</b>&nbsp;&nbsp;&nbsp;<select name="bloodgrp"> <option value=""> ---Select Blood Group---</option>
  	<OPTION VALUE="A+">A+</OPTION>
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
        <OPTION VALUE="A2-">A2-</OPTION>
        <OPTION VALUE="A1B+">A1B+</OPTION>
        <OPTION VALUE="A1B-">A1B-</OPTION>
        <OPTION VALUE="A2B+">A2B+</OPTION>
        <OPTION VALUE="A2B-">A2B-</OPTION></select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Search"  /></font>

           </form>
            
            
           
           
                                 </font>

                   
                   
                    </div></td>
                    <td>
                    
                    
                    
                    <div class="contact_content_right"><br/><br/>
                        <h6><a href="hospitalprofile.jsp">View Profile</a></h6>
                                          
                        <h6><a href="changehospitalpassword.jsp">Change Password</a></h6>
                        
                        <h6><a href="searchdonorhospitalform.jsp">Search Donor</a></h6>
                        
                        <h6><a href="complainthospitalform.jsp">Complaint/Suggestion</a></h6>
                        
                         <h6><a href="logout.jsp">Logout</a></h6>
                        
                    </div></td></tr>
                    <tr><td colspan="2">
                    <table border="1"><thead>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email ID</th>
<th>Gender</th>
<th>Blood grp</th>
<th>Mob no.</th>
<th>Landline no</th>
<th>State</th>
<th>City</th>
<th >Address</th>
<th >Donor Status</th>
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
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getString(12)%></td>
</tr>
<%  } %>
                <%
                        }
              
            rs.close();           
            rs=null;
%>
</table>

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
           <a href="ssearchhospitaldonor.jsp?pageno=<%=previous%>">Prev</a>
       <%
}
                  for(int i=pageNum;i<pageNum+3;i++)
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
                                 <a href="ssearchhospitaldonor.jsp?pageno=<%=i%>"><%=i%></a>
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
     %>                             <a href="ssearchhospitaldonor.jsp?pageno=<%=next%>">Next</a>      
    <%
                             }
    %>
   
    </div>        
                    </td></tr></table>


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

