/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.sql.*;
import java.io.*;
import java.util.*;
import java.util.Date;

import javax.swing.JOptionPane;


/**
 *
 * @author Sonu
 */
public class feedback {
    
    private String fname,lname,emailid,password,checkbox,d2;
    private String story,status;
    int i;
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    
    private Date d1;

    public feedback() {
    }

    public feedback(String fname, String lname, String emailid, String password,String story,String checkbox) {
        this.fname = fname;
        this.lname = lname;
        this.emailid = emailid;
        this.password = password;
        this.story=story;
        this.checkbox=checkbox;
       
    }



    
    public feedback(String fname, String lname, String emailid,String story,String d2) {
        this.fname = fname;
        this.lname = lname;
        this.emailid = emailid;
        this.story=story;
        this.d2=d2;
        
       }
    
    
    
    
    public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
    }

    public String getStory() {
        return story;
    }

    public void setStory(String story) {
        this.story = story;
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

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    public boolean sfeedback() throws Exception {
          
           
               if(checkbox.equals("confirmation"))
               {
            	   byte b[] = password.getBytes();
                   byte b1[] = new byte[b.length];
                   for(int i=0;i<b.length;i++)
                       b1[i]=(byte) ~b[i];
                   String str = new String(b1,0);
                   con = Mycon.getConnection();
                   ps=con.prepareStatement("select * from DONOR_REGISTRATION where EMAIL_ID=? and PASSWORD=?");
                    ps.setString(1, this.emailid);
                    ps.setString(2, str);
                    rs=ps.executeQuery();
                    if(rs.next()) { 
                                   
                   d1 = new Date();
                  
                   ps = con.prepareStatement("insert into FEEDBACK values(?,?,?,?,?,?,?)");
                     ps.setString(1, this.emailid);
                     ps.setString(2, str);
                     ps.setString(3, fname);
                     ps.setString(4, lname);
                     ps.setString(5, story);
                     ps.setString(6, d1.toString());
                     ps.setString(7, null);
                    i = ps.executeUpdate();
                    }
               
            if (i > 0) {
            return true;
                   }
        return false;
    }
               return false;

}
   
    public boolean updatefeedback() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("update FEEDBACK set STATUS=? where EMAILID=? and DATE=?");
        ps.setString(2,this.emailid);
        ps.setString(3, d2);
        ps.setString(1,status);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
    }
    
}
