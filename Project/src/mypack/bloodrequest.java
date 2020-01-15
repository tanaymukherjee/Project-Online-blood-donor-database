package mypack;
import java.sql.*;

public class bloodrequest {

	   
	    private int i,date,year;
		private  long mobno,landlineno=0000; 
	    private String requestid,pfname,plname,emailid,pgender,pbloodgrp,month,state,city,hname,paddress,haddress,purpose,member;
	    private Connection con;
	    private PreparedStatement ps;
	    private ResultSet rs;
	
	    public bloodrequest()
	    {
	    	
	    }

		public bloodrequest(int date, int year, String requestid, long mobno,long landlineno, String pfname, String plname,String emailid, String pgender, String pbloodgrp, String month,String state, String city, String hname, String paddress,String haddress, String purpose, String member) {
			this.date = date;
			this.year = year;
			this.requestid = requestid;
			this.mobno = mobno;
			this.landlineno = landlineno;
		    this.pfname = pfname;
			this.plname = plname;
			this.emailid = emailid;
			this.pgender = pgender;
			this.pbloodgrp = pbloodgrp;
			this.month = month;
			this.state = state;
			this.city = city;
			this.hname = hname;
			this.paddress = paddress;
			this.haddress = haddress;
			this.purpose = purpose;
			this.member = member;
		}
		
		public boolean sbloodrequest() throws Exception {
	           
		      
	    	            con = Mycon.getConnection();
	                    ps = con.prepareStatement("insert into BLOODREQUEST values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	                    ps.setString(1, this.requestid);
	                    ps.setString(2, pfname);
	                    ps.setString(3, plname);
	                    ps.setString(4, emailid);
	                    ps.setString(5, pgender);
	                    ps.setString(6, pbloodgrp);
	                    ps.setInt(7, date);
	                    ps.setString(8, month);
	                    ps.setInt(9, year);
	                    ps.setLong(10, mobno);
	                    ps.setLong(11, landlineno);
	                    ps.setString(12, state);
	                    ps.setString(13, city);
	                    ps.setString(14, hname);
	                    ps.setString(15, paddress);
	                    ps.setString(16, haddress);
	                    ps.setString(17, purpose);
	                    ps.setString(18, member);
	                    i = ps.executeUpdate();
	      			    if (i > 0) {
	            	 Mymail.GmailSend(emailid,"Regarding Blood Request","Thank you for posting request  at Sahyog.com. It's such humane\n thoughts and actions that make the world a place worth living in.\n The way we work is simple, we provide a single interface for\n donors and recipients to find each other quickly and effortlessly.\n\n\nNow that you have posted for blood, we know that either you or \nyour any of your relative needs blood. It is unfortunate on your \nside; and we pray though we are on this social welfare, we pray \nthat no one ever needs our help.\n\nPlease Note:	\n\nYour Request ID :  =  " +requestid+"\n\n As you must be aware, all social initiatives rely on how many hands \nare at work. So, this is another area where you can help us. Refer \nas many friends as you can, so that we can spread the word \naround and help save that many more people. On our part, we can \nassure you that these contact details will not be used for any \ncommercial purposes. We have provided “Invite Your Friends” \nsystem to spread the awareness. Just we need your support. \n\n With Warm Regards, \n\nTeam Quark \n\n(Let there be light)");
	            return true;
	                   }
	        return false;
	  
	  }
		
		
	    
	    
}
