package mypack;
import java.sql.*;

public class rotary {

	private int i;
	private long contactno,pincode;
	private String rname,remailid,rwebsite="nowebsite",state,city,location;
	private Connection con;
    private PreparedStatement ps;
	
	public rotary()
	{}

	public rotary(long contactno, long pincode, String rname, String remailid, String rwebsite, String state, String city, String location) {
		
		this.contactno = contactno;
		this.pincode = pincode;
		this.rname = rname;
		this.remailid = remailid;
		this.rwebsite = rwebsite;
		this.state = state;
		this.city = city;
		this.location = location;
	}
	
	public boolean insertrotary() throws Exception
	{
		con = Mycon.getConnection();
        ps = con.prepareStatement("insert into ROTARYCLUB values(?,?,?,?,?,?,?,?)");
        ps.setString(1, this.rname);
        ps.setString(2, remailid);
        ps.setLong(3, contactno);
        ps.setString(4, rwebsite);
        ps.setString(5, state);
        ps.setString(6, city);
        ps.setLong(7, pincode);
        ps.setString(8, location);
        i = ps.executeUpdate();
			
        if (i > 0) {
       	 Mymail.GmailSend(remailid,"Welcome To Sahyog.com","Respected,\n\nWelcome to sahyog.com\n\nThank you for participating at Sahyog.com. It's such humane \nthoughts and actions that make the world a place worth living in.\n The way we work is simple, we provide a single interface for \ndonors and recipients to find each other quickly and effortlessly.\n\n\nNow that you have filled the form for rotary club participation, \nwe will like to be in touch with you and in turn will love to \nmake a plan to share this initiative, we will love to held blood \ndonation camps at your place which will benefit us in the way \nthat we can strengthen our donor database and also to establish \ngood relations with you.\n\n\nThank You for co-opearting. Will love to have a meeting \nplanned with you sir/madam soon to discuss further.\n\nWith Warm Regards,\n\nTeam Quark\n\n(Let there be light)");
       return true;
              }
        
   return false;

	}
	
}
