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

int rowEnd=pageNum;//*maxRowsPerPage;
int rowStart=(rowEnd-1)+1;
con=mypack.Mycon.getConnection();
st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
st1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
String sql="Select * from (SELECT requestid,pfname,plname,emailid,gender,bloodgrp,date,MONTH,year,mobileno,llno,state,city,hname,paddress,haddress,purpose,member, ROW_NUMBER() OVER () AS RN FROM BLOODREQUEST) AS col where RN between "+rowStart+" and "+rowEnd+" order by RN desc" ;
rs=st.executeQuery(sql);
ResultSet rs1=st1.executeQuery("SELECT count( * ) as total_record FROM BLOODREQUEST");
rs1.next();
maxRecords=rs1.getInt(1);
totalPages=maxRecords;
int remain = maxRecords;
if(remain!=0) totalPages++;

%>
   <%
                   
                while(rs.next())
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
                    <table><tr><td><div class="contact_content_left" align="justify">
                     <h5><font color="lightgreen">Welcome to your Admin Profile</h5></font>
                        <br>
                        
                   <font size="2.5">
             


<br>
<table>
  <TR>
	<TD><strong>Request Id</strong></TD>
	<TD>
	<INPUT type=text name="reqid" id="reqid" readonly="readonly" VALUE="<%=rs.getString(1)%>">
	</TD>
</TR>
  
  
  <TR>
	<TD><strong>Patient's First Name*</strong></TD>
	<TD>
	<INPUT type=text name="firstname" readonly="readonly" VALUE="<%=rs.getString(2)%>">
	</TD>
</TR>

<TR>
	<TD><strong>Patient's Last Name*</strong></TD>

	<TD>
	<INPUT type=text name="lastname" readonly="readonly" VALUE="<%=rs.getString(3)%>">
	</TD>
</TR>

<TR>
	<TD><strong>Valid  Email ID*</strong></TD>
	<TD>
	<INPUT type=text name="validemailid" readonly="readonly" VALUE="<%=rs.getString(4)%>">
	</TD>

</TR>


<TR>
	<TD><strong>Patient's Gender*</strong></TD>
	<TD>
<INPUT type=text name="gender" readonly="readonly" VALUE="<%=rs.getString(5)%>">
	
	</TD>

</TR>

<TR>
	<TD><strong>Patient's  Blood Group*</strong></TD>
	<TD>
	<INPUT type=text name="bloodgrp" readonly="readonly" VALUE="<%=rs.getString(6)%>">
	</TD>
</TR>

<TR>
	<TD><strong>Patient's Date of Birth*</strong></TD>
	<td>
	<INPUT type=text name="date" size="5" readonly="readonly" VALUE="<%=rs.getString(7)%>">
	<INPUT type=text name="month" size="5" readonly="readonly" VALUE="<%=rs.getString(8)%>">
    <INPUT type=text name="year"  size="5" readonly="readonly" VALUE="<%=rs.getString(9)%>"></TD>
   	
    
    

</TR>
    
    
    
    
    <TR>
	<TD><strong>Mobile Number*</strong></TD>
	<TD>
	<INPUT type=text name="mob_no" readonly="readonly" VALUE="<%=rs.getString(10)%>">
	</TD>
</TR>
    
      <TR>
	<TD><strong>Landline Number</strong></TD>

	<TD>
	<INPUT type=text name="ll_no" readonly="readonly" VALUE="<%=rs.getString(11)%>">
	</TD>
</TR>
    
    <TR>
    
				
				
                
<TR>          
<TD><strong>State*</strong></TD>
	<TD>   
      	<INPUT type=text name="state1" readonly="readonly" VALUE="<%=rs.getString(12)%>">
				
	
  </TD>  
  </TR>
  
  
  <TR>
	<TD><strong>City*</strong></TD>
	<TD>  
 <INPUT type=text name="city" readonly="readonly" VALUE="<%=rs.getString(13)%>">
   
    </TD>
    </TR>
<TR>
	<TD><strong>Hospital Name*</strong></TD>
	<TD>
	<INPUT type=text name="hname" readonly="readonly" VALUE="<%=rs.getString(14)%>">
	</TD>

</TR>

<TR>
	<TD><strong>Patient's Permanent Address*</strong></TD>
	<TD>
	<INPUT type=text name="paddress" readonly="readonly"  VALUE="<%=rs.getString(15)%>">
	</TD>
</TR>


<TR>
	<TD><strong>Hospital Address*</strong></TD>
	<TD>
	<INPUT type=text name="haddress" readonly="readonly"  VALUE="<%=rs.getString(16)%>">
	</TD>
</TR>

<TR>
	<TD><strong>Purpose</strong></TD>
	<TD>
	<INPUT type=text name="purpose" readonly="readonly"  VALUE="<%=rs.getString(17)%>">
	</TD>
</TR>


<TR>
	<TD><strong>Are you a member of sahyog.com?</strong></TD>
	<TD>
<INPUT type=text name="member" readonly="readonly" size="10" VALUE="<%=rs.getString(18)%>">
</TD>
</TR>
                </font>
</TR></table>
                   
                   
                    </div></td>
                    
                    
                    
                    <td valign="top">
                    <div class="contact_content_right"><br/><br/>
                        <h6><a href="adminprofile.jsp">View Profile</a></h6>
                                          
                        <h6><a href="changeadminpassword.jsp">Change Password</a></h6>
                        
                        <h6><a href="searchadmindonor.jsp">Search Donor</a></h6>
                        
                        <h6><a href="viewcomplaint.jsp">View Complaint/Suggestion</a></h6>
                        
                        <h6><a href="viewfeedback.jsp"> View Feedback</a> </h6>
                        
                        <h6><a href="bloodrequest.jsp"> View Blood Request</a> </h6>
                         
                        <h6><a href="viewrotaryclub.jsp"> View Rotary Club Request </a> </h6>
                        
                         <h6><a href="logout.jsp">Logout</a></h6>
                        
                    </div></td></tr></table>


                    <div style="clear: both"></div>
               
                
                                            
                
                
				    
				
			            <%
                        }
              
            rs.close();           
            rs=null;
%>
<div class="pagination" align="center">
<br /><br />
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
           <a href="bloodrequest.jsp?pageno=<%=previous%>">Prev</a>
       <%
}
                
             for(int i=pageNum;i<pageNum+2;i++)
           {
                        if(i<totalPages)
                       {
                               if(i==pageNum)
                               {
        %>
        
                                     &nbsp;&nbsp;&nbsp;&nbsp;  <span class="current"><%=pageNum%></span>&nbsp;&nbsp;&nbsp;&nbsp;
        <%                 }
                                else
                                {
        %>               
                                 <a href="bloodrequest.jsp?pageno=<%=i%>"><%=i%></a>
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
     %>                             <a href="bloodrequest.jsp?pageno=<%=next%>">Next</a>      
    <%
                             }
    %>	
				 </div>
					
				</div></div>


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
