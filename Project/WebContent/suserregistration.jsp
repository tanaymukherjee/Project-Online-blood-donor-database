<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*"%>
<%

            donorregistration s = new donorregistration(Integer.parseInt(request.getParameter("date")),
                    Integer.parseInt(request.getParameter("year")),
                    Long.parseLong(request.getParameter("mobno")),
                    Long.parseLong(request.getParameter("llno")),
                    request.getParameter("firstname"),
                    request.getParameter("lastname"),
                    request.getParameter("validemailid"),
                    request.getParameter("password"),
                    
                    request.getParameter("gender"),
                    request.getParameter("bloodgroup"),
                    request.getParameter("state1"),
                    request.getParameter("city1"),
                    request.getParameter("address"),
                    request.getParameter("answer"),
                    Long.parseLong(request.getParameter("pincode")),
                    request.getParameter("month"));
                                        
                    
                    
                    
            try {
                if (s.sdonorregistration()) {
                  	response.sendRedirect("index.html");
                    return;
                }
                    else
                    {
                    	response.sendRedirect("userregistration.html");
                    	return;
                    }
                
            } catch (Exception e) {
                out.println("error occured while saving " + e.getMessage());
            }
%>