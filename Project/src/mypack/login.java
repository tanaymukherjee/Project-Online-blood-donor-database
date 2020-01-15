

package mypack;
import java.sql.*;





public class login {
    
   public static String username,password;
    
   public static String checkLogin1(String userName,String password){
   
       login.username=userName;
       login.password=password;
        
       return username;
   }
    
   
    
    public static int checkLogin() throws Exception
    { 
        
    	
    	
    	Connection con=Mycon.getConnection();
        PreparedStatement ps;
        ResultSet rs;
         
        ps=con.prepareStatement("select * from ADMIN where EMAIL_ID=? and PASSWORD=?");
        ps.setString(1,username);
        ps.setString(2, password);
        rs=ps.executeQuery();
        if(rs.next()) return 1 ;
                
        byte b[] = password.getBytes();
        byte b1[] = new byte[b.length];
        for(int i=0;i<b.length;i++)
            b1[i]=(byte) ~b[i];
        String str = new String(b1,0);
        
        ps=con.prepareStatement("select * from DONOR_REGISTRATION where EMAIL_ID=? and PASSWORD=?");
        ps.setString(1,username);
        ps.setString(2, str);
        rs=ps.executeQuery();
        if(rs.next()) return 2 ;

        
         ps=con.prepareStatement("select * from HOSPITAL_REGISTRATION where PEMAILID=? and PASSWORD=?");
         ps.setString(1,username);
         ps.setString(2, str);
         rs=ps.executeQuery();
        if(rs.next())
        return 3;
        
        return 0;

 }
}
