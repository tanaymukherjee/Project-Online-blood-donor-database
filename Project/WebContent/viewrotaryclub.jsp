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
String sql="Select * from (SELECT RNAME,REMAILID,CONTACTNO,RWEBSITE,STATE,CITY,PINCODE,LOCATION,ROW_NUMBER() OVER () AS RN FROM ROTARYCLUB) AS col where RN between "+rowStart+" and "+rowEnd+" order by RN desc" ;
rs=st.executeQuery(sql);
ResultSet rs1=st1.executeQuery("SELECT count( * ) as total_record FROM ROTARYCLUB");
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
                    <table valign="top"><tr><td><div class="contact_content_left" align="justify">
                     <h5><font color="lightgreen">Welcome to your Admin Profile</h5></font>
                        <br>
                        
                   <font size="2.5"> <br /><br />
<table>
<tr>
	<td><strong>Rotary Club Name*</strong></td>
	<td>
	<input name="hname" type="text" readonly="readonly" size="30" VALUE="<%=rs.getString(1)%>">
	</td>
</tr>
  
 
<tr>
	<td><strong>Valid Email ID*</strong></td>
	<td>
	<input name="vpemailid" type="text" readonly="readonly" size="40" VALUE="<%=rs.getString(2)%>">
	</td>

</tr>


   <tr>
	<td><strong>Contact Number*</strong></td>
	<td>
	<input name="contactno" type="text"  readonly="readonly"  size="40" VALUE="<%=rs.getString(3)%>">
	</td>
</tr>
  <tr>
	<td><strong>Rotary Club Web Site</strong></td>
	<td>
	<input name="hwebsite" type="text" readonly="readonly"  size="40" VALUE="<%=rs.getString(4)%>">
	</td>
</tr>
 <tr>   
<td><strong>State*</strong></td>

        <td>   
      	<input name="state1" type="text"  size="40"   readonly="readonly" VALUE="<%=rs.getString(5)%>">
	

  </td>  
  </tr>
  
  
  <tr>
	<td><strong>City*</strong></td>
	<td>  
 <input name="city1" type="text"  size="40"  readonly="readonly" VALUE="<%=rs.getString(6)%>">
    </td>
    </tr>

<tr>
	<td><strong>Pincode*</strong></td>
	<td>
	<input name="pincode" type="text"  size="40"  readonly="readonly" VALUE="<%=rs.getString(7)%>">
	</td>
</tr>

<tr>
	<td><strong>Rotary Club Loctaion*</strong></td>
	<td>
	<input name="address" type="text" size="40"  readonly="readonly" VALUE="<%=rs.getString(8)%>"></td>
</tr>
</table>
      </font></div></td>
                                                           
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
           <a href="viewrotaryclub.jsp?pageno=<%=previous%>">Prev</a>
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
                                 <a href="viewrotaryclub.jsp?pageno=<%=i%>"><%=i%></a>
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
     %>                             <a href="viewrotaryclub.jsp?pageno=<%=next%>">Next</a>      
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
