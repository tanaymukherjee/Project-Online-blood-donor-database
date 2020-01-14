<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*"%>
<%

            rotary r1 = new rotary(Long.parseLong(request.getParameter("contactno")),
                    Long.parseLong(request.getParameter("pincode")),
                    request.getParameter("hname"),
                    request.getParameter("vpemailid"),
                    request.getParameter("hwebsite"),
                    request.getParameter("state1"),
                    request.getParameter("city1"),
                    request.getParameter("address"));     
            try {
                if (r1.insertrotary()) {
                  	response.sendRedirect("index.html");
                    return;
                }
                    else
                    {
                    	response.sendRedirect("rotaryclub.html");
                    	return;
                    }
                
            } catch (Exception e) {
                out.println("error occured while saving " + e.getMessage());
            }
%>