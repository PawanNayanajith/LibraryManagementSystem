
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Search")
public class Search extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        System.out.println("MySQL Connect Example.");
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/library?useSSL=false";
        String dbName = "library";
        String driver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String password = "manager";

        Statement st;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("Connected to the database");
            String keyword = request.getParameter("keyword");
            //String search="%"+keyword+"%";
            String search = keyword;

            ArrayList al = null;
            ArrayList bookList = new ArrayList();

            String query = "select * from book where bookID like'" + search + "' or title like '" + search + "' or author like '" + search + "'  or publisher like '" + search + "'  or mainClass like '" + search + "'  or subClass like '" + search + "'  or yop like '" + search + "'  or lpy like '" + search + "'  or nop like '" + search + "'  or isbnNo like '" + search + "' order by bookID";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                al = new ArrayList();
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
                al.add(rs.getString(7));
                al.add(rs.getString(8));
                al.add(rs.getString(9));
                al.add(rs.getString(10));
                System.out.println("al :: " + al);
                bookList.add(al);
            }
            request.setAttribute("bookList", bookList);
            System.out.println("bookList " + bookList);
            String nextJSP = "/view.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(request, response);
            conn.close();
            System.out.println("Disconnected from database");
        } catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | ServletException e) {
        }
    }
}
