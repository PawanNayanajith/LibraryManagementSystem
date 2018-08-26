<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/library?useSSL = false";%>
<%!String user = "root";%>
<%!String psw = "manager";%>
<%
    String id = request.getParameter("id");

    if (id != null) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, psw);
            String sql = "delete from mainclassification where mainID=\"" + id + "\"";
            ps = con.prepareStatement(sql);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Main Classification Deleted Successfully!');");
                out.println("location='deleteMainClassification.jsp';");
                out.println("</script>");

            } else {
                out.print("There is a problem in deleting Record.");
            }
        } catch (SQLException sql) {
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>