<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/library?useSSL = false";%>
<%!String user = "root";%>
<%!String psw = "manager";%>
<%
    String id = request.getParameter("id");
    String mainClass = request.getParameter("mainClass");

    if (id != null) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, psw);
            String sql = "Update mainclassification set mainID=?, mainClass=? where mainID=\"" + id + "\"";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, mainClass);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Main Classification Updated Successfully!');");
                out.println("location='updateClassificationMain.jsp';");
                out.println("</script>");

            } else {
                out.print("There is a problem in updating Record.");
            }
        } catch (SQLException sql) {
            request.setAttribute("error", sql);
            out.println(sql);
        }
    }
%>