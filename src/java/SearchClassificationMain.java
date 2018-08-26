
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/SearchClassificationMain")
public class SearchClassificationMain extends HttpServlet {

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
            ArrayList classList = new ArrayList();

            String query = "select * from mainclassification where mainClass like '" +search+ "'";

            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                al = new ArrayList();
                al.add(rs.getString(2));
                System.out.println("al :: " + al);
                classList.add(al);
            }
            request.setAttribute("classList", classList);
            System.out.println("classList " + classList);
            String nextJSP = "/viewSearchClassificationMain.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
            dispatcher.forward(request, response);
            conn.close();
            System.out.println("Disconnected from database");
        } catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | ServletException e) {
        }
    }
}
