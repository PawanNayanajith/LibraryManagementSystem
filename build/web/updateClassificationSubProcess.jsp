<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/library?useSSL = false";%>
<%!String user = "root";%>
<%!String psw = "manager";%>
<%
    String id = request.getParameter("id");
    String subClass = request.getParameter("subClass");

    if (id != null) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, psw);
            String sql = "Update subclassification set subID=?, subClass=? where subID=\"" + id + "\"";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, subClass);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Sub Classification Updated Successfully!');");
                out.println("location='updateClassificationSub.jsp';");
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