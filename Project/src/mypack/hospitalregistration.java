

package mypack;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.*;


public class hospitalregistration {
    
    private int i;
    private long contactno,pincode;
    private String hname,hregistrationno,pemailid,semailid="no secondary emailid",hwebsite="nowebsite",state,city,address,str;
    private Connection con;
    private PreparedStatement ps;
    //private ResultSet rs;

   
       public hospitalregistration() {
    }
    
    public hospitalregistration(long contactno, String hname, String hregistrationno, String pemailid, String semailid, String hwebsite, String state, String city, String address,long pincode) {
        this.contactno = contactno;
        this.hname = hname;
        this.hregistrationno = hregistrationno;
        this.pemailid = pemailid;
        this.semailid = semailid;
        this.hwebsite = hwebsite;
        this.state = state;
        this.city = city;
        this.address = address;
        this.pincode=pincode;
        
    SecureRandom random = new SecureRandom();  
    str = new BigInteger(20, random).toString(5); 
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

    

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public long getContactno() {
        return contactno;
    }

    public void setContactno(long contactno) {
        this.contactno = contactno;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHregistrationno() {
        return hregistrationno;
    }

    public void setHregistrationno(String hregistrationno) {
        this.hregistrationno = hregistrationno;
    }

    public String getHwebsite() {
        return hwebsite;
    }

    public void setHwebsite(String hwebsite) {
        this.hwebsite = hwebsite;
    }

    public String getPemailid() {
        return pemailid;
    }

    public void setPemailid(String pemailid) {
        this.pemailid = pemailid;
    }

    public String getSemailid() {
        return semailid;
    }

    public void setSemailid(String semailid) {
        this.semailid = semailid;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
    
    public boolean shospitaregistration() throws Exception {
           
    				byte b[] = str.getBytes();
    				byte b1[] = new byte[b.length];
    				for(int i=0;i<b.length;i++)
    				b1[i]=(byte) ~b[i];
    				String str1 = new String(b1,0);
    	
    	
    				con = Mycon.getConnection();
                    ps = con.prepareStatement("insert into HOSPITAL_REGISTRATION values(?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, this.hname);
                    ps.setString(2, str1);
                    ps.setString(3, hregistrationno);
                    ps.setString(4, pemailid);
                    ps.setString(5, semailid);
                    ps.setLong(6, contactno);
                    ps.setString(7, hwebsite);
                    ps.setString(8, state);
                    ps.setString(9, city);
                    ps.setLong(10, pincode);
                    ps.setString(11, address);
                    
                    
        
                    i = ps.executeUpdate();
                                   
               if (i > 0) {
            	   Mymail.GmailSend(pemailid,"Welcome To Sahyog.Com" , "Thank you for registering at Sahyog.com. It's such humane \nthoughts and actions that make the world a place worth living \nin. The way we work is simple, we provide a single interface \nfor donors and recipients to find each other quickly and \neffortlessly.\n\n\nNow that you are a registered donor on sahyog.com you might \nlook on for donors in case of emergency. For safety we don’t \nprovide contact details universally on our portal but for health \ninstitutions we provide them with profile. Through which they \ncan access those data and can use them accordingly.\n\n\n\nYour Password Is   "+str+"\n\nThe other important issue to remember is, to make this portal \nimprove at every point, we request you to inform us about the \nunavilibilty of any donor or in case you discover any false \ninformation. Your profile is provided with \ncomplaint/suggestion form for the same.\n\nWith Warm Regards,\n\nTeam Quark\n\n(Let there be light)");
            return true;
                   }
        return false;
    }

    
    
}
