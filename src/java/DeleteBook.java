
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/DeleteBook")
public class DeleteBook extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        Connection con = null;
        PreparedStatement ps = null;
        String id = request.getParameter("bookID");
        PrintWriter out = response.getWriter();

        try {
            if (id != null && !id.isEmpty()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library?useSSL=false", "root", "manager");
                String query = " delete from book where bookID = '" + id + "'";
                ps = con.prepareStatement(query);
                ps.executeUpdate();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Book Deleted Successfully!');");
                out.println("location='deleteBook.jsp';");
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Error! : Book Does Not Exist');");
                out.println("location='deleteBook.jsp';");
                out.println("</script>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('File could not be deleted ')");
            out.println("location='deleteBook.jsp';");
            out.println("</script>");
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException e) {
            }
        }
    }
}
