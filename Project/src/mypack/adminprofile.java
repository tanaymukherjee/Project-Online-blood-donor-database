package mypack;
import java.sql.*;



public class adminprofile {

	private String dob,adminid,adminname,gender,address,emailid,password,repassword;
	private long contactno;
	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;
	
	
	public adminprofile() {
              }


	
	
	public adminprofile(String emailid) {
		this.emailid = emailid;
	}




	public adminprofile(String adminid, String adminname, String dob,String gender,String address, long contactno, String emailid) {
		this.adminid = adminid;
		this.adminname = adminname;
		this.gender = gender;
		this.address = address;
		this.emailid = emailid;
		this.contactno = contactno;
		this.dob = dob;
	}


	
	
	public String getRepassword() {
		return repassword;
	}


	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}


	public String getAdminid() {
		return adminid;
	}


	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}


	public String getAdminname() {
		return adminname;
	}


	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
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


	public long getContactno() {
		return contactno;
	}


	public void setContactno(long contactno) {
		this.contactno = contactno;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}
	
	
	public ResultSet getadminprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("select * from ADMIN where EMAIL_ID=?");
        ps.setString(1,this.emailid);
        rs=ps.executeQuery();
        if(rs==null)return null;
        return rs;
        
    }
    
    public boolean updateadminprofile() throws Exception
    {
        con=Mycon.getConnection();
        ps=con.prepareStatement("update ADMIN  set CONTACT_NO=?,ADDRESS=? where EMAIL_ID=?");
        ps.setString(3,this.emailid);
        ps.setLong(1, contactno);
        ps.setString(2,address);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
    }
    
    public boolean changeadminpassword() throws Exception
    {
       if(repassword.equals(password))
       {
        con=Mycon.getConnection();
        ps=con.prepareStatement("update ADMIN  set PASSWORD=? where EMAIL_ID=?");
        ps.setString(2,this.emailid);
        ps.setString(1,password);
        int i=ps.executeUpdate();
        if(i>0) return true;
        return false;
       }
       return false;
    }
	
}
