<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*" %>
  
  <% 
  response.addHeader("cache-control","no-cache");
  try
        {
      String st=login.checkLogin1(request.getParameter("userid"),request.getParameter("password"));     
       
      int ul=login.checkLogin();
           if(ul==0) {
                    response.sendRedirect("index.html");
                    return;
                        }
            
            if(ul==1) {
                    response.sendRedirect("adminhome.jsp");
                    session=request.getSession(false);
                    session.setAttribute("level", st);
                    return;
            }
            if(ul==2) {
                    response.sendRedirect("donorhome.jsp");
                        session=request.getSession(false);
                        session.setAttribute("level", st);
                    return;
                }
            
            if(ul==3) {
                    response.sendRedirect("hospitalhome.jsp");
                        session=request.getSession(false);
                        session.setAttribute("level", st);
                    return;
                        } 
        }
        catch(Exception e)
        {
            
        	out.println("error occured while saving " + e.getMessage());
            return;
        }
  %>