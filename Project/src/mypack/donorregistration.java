

package mypack;
//import com.sun.corba.se.spi.orbutil.fsm.Guard.Complement;
import java.sql.*;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class donorregistration {
    
    private int i,points,k;
	private int date,year;
	private String odate,ddate;
    private  long mobno,landlineno=0000,pincode; 
    private String fname,lname,emailid,password,gender,bloodgrp,state,city,address,h_o_h_y_d_b_i_t_p,month;
    private Connection con;
    private PreparedStatement ps;
   // private ResultSet rs;
    

    
     public donorregistration() {
    }
    
    
     public donorregistration(int date, int year, long mobno, long landlineno, String fname, String lname, String emailid, String password, String gender, String bloodgrp, String state, String city, String address, String h_o_h_y_d_b_i_t_p,long pincode, String month) {
        this.date = date;
        this.year = year;
        this.mobno = mobno;
        this.landlineno = landlineno;
        this.fname = fname;
        this.lname = lname;
        this.emailid = emailid;
        this.password =password;
        
        this.gender = gender;
        this.bloodgrp = bloodgrp;
        this.state = state;
        this.city = city;
        this.address = address;
        this.h_o_h_y_d_b_i_t_p = h_o_h_y_d_b_i_t_p;
        this.month = month;
        
        this.pincode=pincode;
    }

    public long getPincode() {
        return pincode;
    }

    public void setPincode(long pincode) {
        this.pincode = pincode;
    }

    
     
     
     public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBloodgrp() {
        return bloodgrp;
    }

    public void setBloodgrp(String bloodgrp) {
        this.bloodgrp = bloodgrp;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public long getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getH_o_h_y_d_b_i_t_p() {
        return h_o_h_y_d_b_i_t_p;
    }

    public void setH_o_h_y_d_b_i_t_p(String h_o_h_y_d_b_i_t_p) {
        this.h_o_h_y_d_b_i_t_p = h_o_h_y_d_b_i_t_p;
    }

    public long getLandlineno() {
        return landlineno;
    }

    public void setLandlineno(long landlineno) {
        this.landlineno = landlineno;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public long getMobno() {
        return mobno;
    }

    public void setMobno(long mobno) {
        this.mobno = mobno;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   

   

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public long getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

   

   
    
     
    
     
  public boolean sdonorregistration() throws Exception {
	  
	  if(month=="Jan")k=1;
	  if(month=="Feb")k=2;
	  if(month=="Mar")k=3;
	  if(month=="Apr")k=4;
	  if(month=="May")k=5;
	  if(month=="Jun")k=6;
	  if(month=="Jul")k=7;
	  if(month=="Aug")k=8;
	  if(month=="Sep")k=9;
	  if(month=="Oct")k=10;
	  if(month=="Nov")k=11;
	  if(month=="Dec")k=12;
           
      		points=50;
      		Calendar now = Calendar.getInstance();
      		odate=((now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE) + "-" + now.get(Calendar.YEAR)).toString();
      		now.add(Calendar.DATE, -100);
      		ddate=((now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE) + "-" + now.get(Calendar.YEAR)).toString();
      		byte b[] = password.getBytes();
      		byte b1[] = new byte[b.length];
      		for(int j=0;j<b.length;j++)
      		b1[j]=(byte) ~b[j];
      		String str = new String(b1,0);
      		
      		      	
        	
        	String ddate1=(now.get(Calendar.YEAR)+ "-" +(now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.DATE)  ).toString();
        	String dateParts1[] = ddate1.split("-");
        	int year1  = Integer.parseInt(dateParts1[0]);
        	int month1  = Integer.parseInt(dateParts1[1]);
        	int date1 = Integer.parseInt(dateParts1[2]);
    	 
         
         
        	Calendar cal1 = new GregorianCalendar();
        	Calendar cal2 = new GregorianCalendar();
    	 
        	cal1.set(year,k,date); 
        	cal2.set(year1,month1,date1);
        	int j=daysBetween(cal1.getTime(),cal2.getTime());
      		j=j/365;
      		if(j>=18)
      		{
      			if(j<60){
                    con = Mycon.getConnection();
                    ps = con.prepareStatement("insert into DONOR_REGISTRATION values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, this.fname);
                    ps.setString(2, lname);
                    ps.setString(3, emailid);
                    ps.setString(4, str);
                    ps.setString(5, gender);
                    ps.setString(6, bloodgrp);
                    ps.setLong(7, date);
                    ps.setString(8, month);
                    ps.setLong(9, year);
                    ps.setLong(10, mobno);
                    ps.setLong(11, landlineno);
                    ps.setString(12, state);
                    ps.setString(13, city);
                    ps.setLong(14, pincode);
                    ps.setString(15, address);
                    ps.setString(16, h_o_h_y_d_b_i_t_p);
                    ps.setString(17, odate);
                    ps.setString(18, ddate);
                    ps.setInt(19, points);
                    ps.setInt(20, j);
                                
        
                    i = ps.executeUpdate();
      			
             if (i > 0) {
            	 Mymail.GmailSend(emailid,"Welcome To Sahyog.com","Thank you for registering at Sahyog.com. It's such humane thoughts\n and actions that make the world a place worth living in. The way\n we work is simple, we provide a single interface for donors and\n recipients to find each other quickly and effortlessly.\n\n\nNow that you are a registered donor on sahyog.com you might \nreceive calls from recipients. So please comply with their request \nbased on your availability.\n\nThe other important issue to remember is, after this registration, if \nyou happen to donate blood, please login to the site and update \nyour last donation details from your profile. This will ensure that \nyour name doesn't appear on the search results for a period of 3 \nmonths, which is the average time frame required by the body to \nfully replenish the donated blood. Similarly, God forbid, but if \nyou happen to suffer from any other ailments, please let us know. \nThis way we can ensure recipients do not call you.\n\nWith Warm Regards,\n\nTeam Quark\n\n(Let there be light)");
            return true;
                   }
             
        return false;
      		}
      			return false;
      		}
      		return false;
  }
  
  public int daysBetween(Date d1, Date d2){
 	 return (int)( (d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
 	 }
    
}
