/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;
import java.sql.*;

/**
 *
 * @author Sonu
 */
public class hospitalprofile {
    
    private  String pemailid,semailid,password,repassword,state,city,hname,hregistrationno,address,hwebsite;
    private long contactno,pincode;
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;

    public hospitalprofile() {
    }

    public hospitalprofile(String pemailid) {
        this.pemailid = pemailid;
        
    }

       
      
    
    
    public hospitalprofile(String hname, String hregistrationno,String pemailid,String semailid,long contactno, String hwebsite,String state, String city,   long pincode, String address)
    {
    	this.pemailid = pemailid;
    	this.semailid = semailid;
		this.state = state;
		this.city = city;
		this.hname = hname;
		this.hregistrationno = hregistrationno;
		this.address = address;
		this.hwebsite = hwebsite;
		this.contactno = contactno;
		this.pincode = pincode;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHwebsite() {
		return hwebsite;
	}

	public void setHwebsite(String hwebsite) {
		this.hwebsite = hwebsite;
	}

	public long getContactno() {
		return contactno;
	}

	public void setContactno(long contactno) {
		this.contactno = contactno;
	}

	public long getPincode() {
		return pincode;
	}

	public void setPincode(long pincode) {
		this.pincode = pincode;
	}

	public ResultSet gethospitalprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("select * from HOSPITAL_REGISTRATION where PEMAILID=?");
        ps.setString(1,this.pemailid);
        rs=ps.executeQuery();
        if(rs==null)return null;
        return rs;
        
    }
    
       
    public boolean changehospitalpassword() throws Exception
    {
       if(repassword.equals(password))
       {
    	   byte b[] = password.getBytes();
           byte b1[] = new byte[b.length];
           for(int i=0;i<b.length;i++)
               b1[i]=(byte) ~b[i];
           String str = new String(b1,0);
        con=Mycon.getConnection();
        ps=con.prepareStatement("update HOSPITAL_REGISTRATION set PASSWORD=? where PEMAILID=?");
        ps.setString(2,this.pemailid);
        ps.setString(1,str);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
       }
       return false;
    }
    
   
    public boolean updatehospitalprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("update HOSPITAL_REGISTRATION set CONTACTNO=?,SEMAILID=?, HOSPITALWEBSITE=? where PEMAILID=?");
        ps.setString(4,this.pemailid);
        ps.setLong(1, contactno);
        ps.setString(2,semailid);
        ps.setString(3,hwebsite);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
    }

}
