<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/library?useSSL = false";%>
<%!String user = "root";%>
<%!String psw = "manager";%>
<%
    String id = request.getParameter("id");
    String bookID = request.getParameter("bookID");
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    String mainClass = request.getParameter("mainClass");
    String subClass = request.getParameter("subClass");
    String yop = request.getParameter("yop");
    String lpy = request.getParameter("lpy");
    String isbnNo = request.getParameter("isbnNo");
    String nop = request.getParameter("nop");

    if (id != null) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, psw);
            String sql = "Update book set bookID=?,title=?,author=?,publisher=?,mainClass=?,subClass=?,yop=?,lpy=?,isbnNo=?,nop=? where bookID=\"" + id + "\"";
            ps = con.prepareStatement(sql);
            ps.setString(1, bookID);
            ps.setString(2, title);
            ps.setString(3, author);
            ps.setString(4, publisher);
            ps.setString(5, mainClass);
            ps.setString(6, subClass);
            ps.setString(7, yop);
            ps.setString(8, lpy);
            ps.setString(9, isbnNo);
            ps.setString(10, nop);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Book Updated Successfully!');");
                out.println("location='updateBook.jsp';");
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