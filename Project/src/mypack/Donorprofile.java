/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.util.Date;
/**
 *
 * @author Sonu
 */
public class Donorprofile {
    
    private  String emailid,password,repassword,state,city,bloodgrp,fname,lname,gender,address,month,subject,complaint,complaintid ,d2,hname,hlocation;
    private int date,year,i,j,points;
    private long mobno,landlineno,pincode;
    private PreparedStatement ps;
    private ResultSet rs,rs1;
    private Connection con;
    private Date d1;

    public Donorprofile() {
    }

    public Donorprofile(String emailid) {
        this.emailid = emailid;
        
    }

    public Donorprofile (String complaintid,String emailid , String subject,String complaint ,String d2 )
    {
    	this.complaintid=complaintid;
    	this.complaint=complaint;
    	this.emailid=emailid;
    	this.subject=subject;
    	this.d2=d2;
    }
    
    public void donorprofile1( String d2 ,String hname,String hlocation,String city )
    {
    	this.d2=d2;
    	this.hname = hname;
    	this.hlocation = hlocation;
    	this.city=city;
    	
    }
   

  
    

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHlocation() {
		return hlocation;
	}

	public void setHlocation(String hlocation) {
		this.hlocation = hlocation;
	}

	public String getComplaintid() {
		return complaintid;
	}

	public void setComplaintid(String complaintid) {
		this.complaintid = complaintid;
	}

	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public Donorprofile(String fname, String lname,String emailid,String gender,String bloodgrp,int date,String month,int year,long mobno, long landlineno, String state, String city, long pincode,String address) {
        this.state = state;
        this.city = city;
        this.bloodgrp = bloodgrp;
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.address = address;
        this.month = month;
        this.date = date;
        this.year = year;
        this.mobno = mobno;
        this.landlineno = landlineno;
        this.pincode=pincode;
        this.emailid=emailid;
    }

    public String getComplaint() {
        return complaint;
    }

    public void setComplaint(String complaint) {
        this.complaint = complaint;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    
    
    
    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
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

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
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

    public long getPincode() {
        return pincode;
    }

    public void setPincode(long pincode) {
        this.pincode = pincode;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
    
        
    
    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    public ResultSet getprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("select * from DONOR_REGISTRATION where EMAIL_ID=?");
        ps.setString(1,this.emailid);
        rs=ps.executeQuery();
        if(rs==null)return null;
        return rs;
        
    }
    
    public boolean updateprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("update DONOR_REGISTRATION set MOBILE_NO=?,LANDLINE_NO=?, PINCODE=?,ADDRESS=? where EMAIL_ID=?");
        ps.setString(5,this.emailid);
        ps.setLong(1, mobno);
        ps.setLong(2,landlineno);
        ps.setLong(3,pincode);
        ps.setString(4,address);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
    }
    
    public boolean changepassword() throws Exception
    {
       if(repassword.equals(password))
       {
    	   byte b[] = password.getBytes();
           byte b1[] = new byte[b.length];
           for(int i=0;i<b.length;i++)
               b1[i]=(byte) ~b[i];
           String str = new String(b1,0);
        con=Mycon.getConnection();
        ps=con.prepareStatement("update DONOR_REGISTRATION set PASSWORD=? where EMAIL_ID=?");
        ps.setString(2,this.emailid);
        ps.setString(1,str);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
       }
       return false;
    }
    
    
    public boolean donorcomplaint() throws SQLException {
    	d1 = new Date();
      SecureRandom random = new SecureRandom();  
   complaintid = new BigInteger(5, random).toString(2);
                    con = Mycon.getConnection();
                    ps = con.prepareStatement("insert into COMPLAINT values(?,?,?,?,?)");
                    ps.setString(1, this.complaintid);
                    ps.setString(2, emailid);
                    ps.setString(3, subject);
                    ps.setString(4, complaint);
                    ps.setString(5, d1.toString());
        
                   int i = ps.executeUpdate();
         
             if (i > 0) {
            return true;
                   }
        return false;
    }
    
   
    
    public ResultSet getdonorhistory() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("select * from DONOR_HISTORY where EMAIL_ID=?");
        ps.setString(1,this.emailid);
        rs=ps.executeQuery();
        if(rs==null)return null;
        return rs;
    } 
    
    public boolean inserthistory() throws Exception
    {
    	con = Mycon.getConnection();
    	con=Mycon.getConnection();
    	ps=con.prepareStatement("select POINTS from DONOR_REGISTRATION where EMAIL_ID=?");
    	ps.setString(1,this.emailid);
    	rs1=ps.executeQuery();
    	if(rs1.next()){
    	 points=rs1.getInt("POINTS");
    	points=points+10;
    	}
    	ps=con.prepareStatement("select * from DONOR_UPDATEHISTORY where EMAIL_ID=?");
        ps.setString(1,this.emailid);
        rs=ps.executeQuery();
        if(rs.next())
        {
        	String str1 = rs.getString(2);
        	String dateParts[] = str1.split("-");
        	int year  = Integer.parseInt(dateParts[0]);
        	int month  = Integer.parseInt(dateParts[1]);
        	int date = Integer.parseInt(dateParts[2]);
       
       
        	String dateParts1[] = d2.split("-");
        	int year1  = Integer.parseInt(dateParts1[0]);
        	int month1  = Integer.parseInt(dateParts1[1]);
        	int date1 = Integer.parseInt(dateParts1[2]);
    	 
         
         
        	Calendar cal1 = new GregorianCalendar();
        	Calendar cal2 = new GregorianCalendar();
    	 
        	cal1.set(year,month,date); 
        	cal2.set(year1,month1,date1);
        	j=daysBetween(cal1.getTime(),cal2.getTime());
        	if(j>=90)
        	{
        		con = Mycon.getConnection();
        		ps = con.prepareStatement("update DONOR_REGISTRATION set DDATE=?,POINTS=? where EMAIL_ID=?");
        		ps.setString(3, this.emailid);
        		ps.setString(1, d2);
        		ps.setInt(2, points);
        		i = ps.executeUpdate();
        		ps = con.prepareStatement("update DONOR_UPDATEHISTORY set DATE=?,HNAME=?,HLOCATION=?,CITY=? where EMAIL_ID=?");
        		ps.setString(5, this.emailid);
        		ps.setString(1, d2);
        		ps.setString(2, hname);
        		ps.setString(3, hlocation);
        		ps.setString(4, city);
        		i = ps.executeUpdate();
        		if(i>0)
        		{	
        			
        			ps = con.prepareStatement("insert into DONOR_HISTORY values(?,?,?,?,?)");
        			ps.setString(1, this.emailid);
        			ps.setString(2, d2);
        			ps.setString(3, hname);
        			ps.setString(4, hlocation);
        			ps.setString(5, city);
        			i = ps.executeUpdate();
        			if (i > 0) {
        				return true;
        						}
        			return false;
        		}
        		return false;
        	}
        	return false;
        }
        con = Mycon.getConnection();
        ps = con.prepareStatement("update DONOR_REGISTRATION set DDATE=?,POINTS=? where EMAIL_ID=?");
		ps.setString(3, this.emailid);
		ps.setString(1, d2);
		ps.setInt(2, points);
		i = ps.executeUpdate();
		ps = con.prepareStatement("insert into DONOR_UPDATEHISTORY values(?,?,?,?,?)");
		ps.setString(1, this.emailid);
		ps.setString(2, d2);
		ps.setString(3, hname);
		ps.setString(4, hlocation);
		ps.setString(5, city);
		i = ps.executeUpdate();
		if(i>0)
		{
			ps = con.prepareStatement("insert into DONOR_HISTORY values(?,?,?,?,?)");
			ps.setString(1, this.emailid);
			ps.setString(2, d2);
			ps.setString(3, hname);
			ps.setString(4, hlocation);
			ps.setString(5, city);
			i = ps.executeUpdate();
			if (i > 0) {
				return true;
						}
			return false;
		}
		return false;
	}
   
    	public int daysBetween(Date d1, Date d2){
    	 return (int)( (d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
    	 }
        
}
