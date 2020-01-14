<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*"%>
<%

            bloodrequest b1 = new bloodrequest(Integer.parseInt(request.getParameter("date")),
                    Integer.parseInt(request.getParameter("year")),
                    request.getParameter("reqid"),
                    Long.parseLong(request.getParameter("mob_no")),
                    Long.parseLong(request.getParameter("ll_no")),
                    request.getParameter("firstname"),
                    request.getParameter("lastname"),
                    request.getParameter("validemailid"),
                    request.getParameter("gender"),
                    request.getParameter("bloodgroup"),
                    request.getParameter("month"),
                    request.getParameter("state1"),
                    request.getParameter("city1"),
                    request.getParameter("hname"),
                    request.getParameter("paddress"),
                    request.getParameter("haddress"),
                    request.getParameter("purpose"),
                    request.getParameter("member"));
                                        
                                  
                    
            try {
                if (b1.sbloodrequest()) {
                  	response.sendRedirect("index.html");
                    return;
                }
                    else
                    {
                    	response.sendRedirect("bloodrequest.html");
                    	return;
                    }
                
            } catch (Exception e) {
                out.println("error occured while saving " + e.getMessage());
            }
%>