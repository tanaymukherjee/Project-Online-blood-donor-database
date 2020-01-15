/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.sql.*;
import java.util.Date;

/**
 *
 * @author Sonu
 */
public class searchdonor {
    
     private String d2,state,city,bloodgrp,fname,lname,gender,address,donorstatus,emailid;
     private long mobno,llno,pincode;
    

    public  searchdonor(){
    }

    public searchdonor(String fname, String lname, String gender,String bloodgrp,String state, String city ) {
        this.state = state;
        this.city = city;
        this.bloodgrp = bloodgrp;
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
    }
     
       
    
    public searchdonor(String fname, String lname,String emailid,String gender,String bloodgrp,long mobno, long llno,String state, String city,  long pincode, String address,String donorstatus) {
		this.state = state;
		this.city = city;
		this.bloodgrp = bloodgrp;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.address = address;
		this.donorstatus = donorstatus;
		this.emailid = emailid;
		this.mobno = mobno;
		this.llno = llno;
		this.pincode = pincode;
		
	}

    
    
	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public searchdonor(String state, String city, String bloodgrp) {
        this.state = state;
        this.city = city;
        this.bloodgrp = bloodgrp;
    }

 
	
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDonorstatus() {
		return donorstatus;
	}

	public void setDonorstatus(String donorstatus) {
		this.donorstatus = donorstatus;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public long getMobno() {
		return mobno;
	}

	public void setMobno(long mobno) {
		this.mobno = mobno;
	}

	public long getLlno() {
		return llno;
	}

	public void setLlno(long llno) {
		this.llno = llno;
	}

	public long getPincode() {
		return pincode;
	}

	public void setPincode(long pincode) {
		this.pincode = pincode;
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

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
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

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
  

      
   
      
      public int daysBetween(Date d1, Date d2){
     	 return (int)( (d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
     	 }
    
}
