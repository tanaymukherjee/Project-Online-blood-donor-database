<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,mypack.*"%>
<%

            feedback f = new feedback(request.getParameter("firstname"),request.getParameter("lastname"),request.getParameter("validemailid"),request.getParameter("password"),request.getParameter("story"),request.getParameter("agrrement"));   
             try {
                if (f.sfeedback()) {
                    response.sendRedirect("index.html");
                    return;
                }
                response.sendRedirect("feedback.html");
                return;
            } catch (Exception e) {
                out.println("error occured while saving " + e.getMessage());
            }
%>