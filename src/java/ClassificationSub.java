
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ClassificationSub"})
public class ClassificationSub extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookController</title>");
            out.println("</head>");
            out.println("<body>");

            out.println("<h1>Servlet BookController at " + request.getContextPath() + "</h1>");

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        BookClassSub bookClassSub = new BookClassSub();

        bookClassSub.setSubClass(request.getParameter("subClass"));
        bookClassSub.setMainClass(request.getParameter("mainClass"));

        BookClassSubDAO bookClassSubDAO = new BookClassSubDAO();

        try (PrintWriter out = response.getWriter()) {
            bookClassSubDAO.saveBookClassSub(bookClassSub);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Classification Added Successfully!');");
            out.println("location='classificationSub.jsp';");
            out.println("</script>");

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Classification.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
