package mypack;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.*;

public class forgotpassword {
	
	private String password,emailid;
	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;
	
	public forgotpassword()
	{
		
	}
	
	
	public boolean forgotpassword1(String emailid) throws Exception
    {
		this.emailid=emailid;
    		SecureRandom random = new SecureRandom();  
    	   password = new BigInteger(8, random).toString(2);
    	  System.out.println(emailid);
    	   byte b[] = password.getBytes();
           byte b1[] = new byte[b.length];
           for(int i=0;i<b.length;i++)
               b1[i]=(byte) ~b[i];
           String str = new String(b1,0);
          
           System.out.println(str);
           
           con=Mycon.getConnection();
           ps=con.prepareStatement("select * from DONOR_REGISTRATION where EMAIL_ID=?");
           ps.setString(1,this.emailid);
       		rs=ps.executeQuery();
       		if(rs.next()){
           ps=con.prepareStatement("update DONOR_REGISTRATION set PASSWORD=? where EMAIL_ID=?");
       		ps.setString(2,this.emailid);
       		ps.setString(1,str);
       		int i=ps.executeUpdate();
       		if(i>0){ 
       			Mymail.GmailSend(emailid,"Changed Password", "Your Password Is"+password);
       			return true;
       		}
       		return false;
       		}
       	 ps=con.prepareStatement("select * from HOSPITAL_REGISTRATION where PEMAILID=?");
         ps.setString(1,this.emailid);
     		rs=ps.executeQuery();
     		if(rs.next()){
       		ps=con.prepareStatement("update HOSPITAL_REGISTRATION set PASSWORD=? where PEMAILID=?");
       		ps.setString(2,this.emailid);
       		ps.setString(1,str);
       		 int i=ps.executeUpdate();
       		if(i>0){
       			Mymail.GmailSend(emailid,"Changed Password", "Your Password Is"+password);
       			return true;
       		}
       		return false;
     		}
       		
       		
       		return false;
       

    }

}
