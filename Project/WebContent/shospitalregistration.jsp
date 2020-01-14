<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*"%>
<%

            hospitalregistration h = new hospitalregistration(Long.parseLong(request.getParameter("contactno")),
                    request.getParameter("hname"),
                    request.getParameter("hregistrationno"),
                    request.getParameter("vpemailid"),
                    request.getParameter("vsemailid"),
                    request.getParameter("hwebsite"),
                    request.getParameter("state1"),
                    request.getParameter("city1"),
                    request.getParameter("address"),
                    Long.parseLong(request.getParameter("pincode")));                    
                    
                    
                    
            try {
                if (h.shospitaregistration()) {
                    response.sendRedirect("hospitalindex.html");
                    return;
                }
            } catch (Exception e) {
                out.println("error occured while saving " + e.getMessage());
            }
%>