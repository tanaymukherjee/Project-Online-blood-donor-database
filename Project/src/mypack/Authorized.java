package mypack;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Authorized 
{
    HttpServletRequest request;
    HttpServletResponse response;
    HttpSession session=null;

   
    public Authorized()
    {}
    
    public Authorized(HttpServletRequest req,HttpServletResponse res)
    {
        request=req;
        response=res;
        session=request.getSession(false);
    }
    
    
    public String getemailid() throws Exception
    {
        return session.getAttribute("level").toString();
    }
    
    public String getstate() throws Exception
    {
        return session.getAttribute("state").toString();
    }
    
    public String getcity() throws Exception
    {
        return session.getAttribute("city").toString();
    }
    public String getbg() throws Exception
    {
        return session.getAttribute("bg").toString();
    }
    public boolean isValidSession()
    {
        if(session!=null)
            return true;
        return false;
    }

public void logout() throws IOException
{
	session.invalidate();
    
    session=null;
    
    response.sendRedirect("index.html");
    
}

  

}
