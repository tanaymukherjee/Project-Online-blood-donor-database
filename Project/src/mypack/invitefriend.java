package mypack;
import java.sql.*;

public class invitefriend {
	private int i;
	private String yname,yemail,f1name,f1email,f2name,f2email,f3name,f3email,f4name,f4email;
	private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
	
	public invitefriend()
	{
		
	}

	public invitefriend(String yname, String yemail, String f1name,String f1email, String f2name, String f2email, String f3name,String f3email, String f4name, String f4email) {
		super();
		this.yname = yname;
		this.yemail = yemail;
		this.f1name = f1name;
		this.f1email = f1email;
		this.f2name = f2name;
		this.f2email = f2email;
		this.f3name = f3name;
		this.f3email = f3email;
		this.f4name = f4name;
		this.f4email = f4email;
	}

	
	public boolean invitefriend1() throws Exception {
        
	      
  	
                  con = Mycon.getConnection();
                  ps = con.prepareStatement("select * from DONOR_REGISTRATION where EMAIL_ID=?");
                  ps.setString(1, this.yemail);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {
                  ps = con.prepareStatement("insert into INVITE_FRIEND values(?,?,?)");
                  ps.setString(1, this.yemail);
                  ps.setString(2, f1name);
                  ps.setString(3, f1email);        
                  i = ps.executeUpdate();
                  if (i > 0) {
                	  Mymail.GmailSend(f1email,"Your Friend Wants You To Join Us For Donate Blood!","Your Friend  "+yname+",\n Believes that you too can and will save lives. And that's \n exactly why he/she has referred you to us. Sahyog.com is an online non- \n profit, non -commercial initiative from Team - Quark. We just are here to \n help people find donors quickly and effortlessly. \n\nWhy this initiative you might want to ask? In India, every 2 seconds \n someone is in need of blood. We require about 4 Crore units of blood \n annually and only a merger 5 Lakh units are available. Such is the shortag \n of blood in this country. Keeping this mind we started this initiative of \n mobilizing as many donors as possible, so that recipients do not have go \n through all the pain in times of emergencies\n\n.If you are ready to save a life Register as a donor now! \n\nIf you still have doubts or clarifications Visit our website. \n\n Thank You! \n\nWith Warm Regards, \n\nTeam Quark\n\n(Let there be light) \n\n");
                	  
                  }
                  
                  if(f2name!=null)
                  {
                	  ps = con.prepareStatement("insert into INVITE_FRIEND values(?,?,?)");
                      ps.setString(1, this.yemail);
                      ps.setString(2, f2name);
                      ps.setString(3, f2email);        
                      i = ps.executeUpdate();
                      if (i > 0) {
                    	  Mymail.GmailSend(f2email,"Your Friend Wants You To Join Us For Donate Blood!","Your Friend  "+yname+",\n Believes that you too can and will save lives. And that's \n exactly why he/she has referred you to us. Sahyog.com is an online non- \n profit, non -commercial initiative from Team - Quark. We just are here to \n help people find donors quickly and effortlessly. \n\nWhy this initiative you might want to ask? In India, every 2 seconds \n someone is in need of blood. We require about 4 Crore units of blood \n annually and only a merger 5 Lakh units are available. Such is the shortag \n of blood in this country. Keeping this mind we started this initiative of \n mobilizing as many donors as possible, so that recipients do not have go \n through all the pain in times of emergencies\n\n.If you are ready to save a life Register as a donor now! \n\nIf you still have doubts or clarifications Visit our website. \n\n Thank You! \n\nWith Warm Regards, \n\nTeam Quark\n\n(Let there be light) \n\n");
                    	  
                      }
                  }
                  
                  if(f3name!=null)
                  {
                	  ps = con.prepareStatement("insert into INVITE_FRIEND values(?,?,?)");
                      ps.setString(1, this.yemail);
                      ps.setString(2, f3name);
                      ps.setString(3, f3email);        
                      i = ps.executeUpdate();
                      if (i > 0) {
                    	  Mymail.GmailSend(f3email,"Your Friend Wants You To Join Us For Donate Blood!","Your Friend  "+yname+",\n Believes that you too can and will save lives. And that's \n exactly why he/she has referred you to us. Sahyog.com is an online non- \n profit, non -commercial initiative from Team - Quark. We just are here to \n help people find donors quickly and effortlessly. \n\nWhy this initiative you might want to ask? In India, every 2 seconds \n someone is in need of blood. We require about 4 Crore units of blood \n annually and only a merger 5 Lakh units are available. Such is the shortag \n of blood in this country. Keeping this mind we started this initiative of \n mobilizing as many donors as possible, so that recipients do not have go \n through all the pain in times of emergencies\n\n.If you are ready to save a life Register as a donor now! \n\nIf you still have doubts or clarifications Visit our website. \n\n Thank You! \n\nWith Warm Regards, \n\nTeam Quark\n\n(Let there be light) \n\n");
                    	  
                      }
                  }
                  
                  
                  if(f4name!=null)
                  {
                	  ps = con.prepareStatement("insert into INVITE_FRIEND values(?,?,?)");
                      ps.setString(1, this.yemail);
                      ps.setString(2, f4name);
                      ps.setString(3, f4email);        
                      i = ps.executeUpdate();
                      if (i > 0) {
                    	  Mymail.GmailSend(f4email,"Your Friend Wants You To Join Us For Donate Blood!","Your Friend  "+yname+",\n Believes that you too can and will save lives. And that's \n exactly why he/she has referred you to us. Sahyog.com is an online non- \n profit, non -commercial initiative from Team - Quark. We just are here to \n help people find donors quickly and effortlessly. \n\nWhy this initiative you might want to ask? In India, every 2 seconds \n someone is in need of blood. We require about 4 Crore units of blood \n annually and only a merger 5 Lakh units are available. Such is the shortag \n of blood in this country. Keeping this mind we started this initiative of \n mobilizing as many donors as possible, so that recipients do not have go \n through all the pain in times of emergencies\n\n.If you are ready to save a life Register as a donor now! \n\nIf you still have doubts or clarifications Visit our website. \n\n Thank You! \n\nWith Warm Regards, \n\nTeam Quark\n\n(Let there be light) \n\n");
                    	  
                      }
                  }
                  
                  
                  if(i>0)
                  {
                	  return true;
                  }
                  
                  }

                  return false;
	}
	
	
}
