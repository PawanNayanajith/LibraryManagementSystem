
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String _username = request.getParameter("username");
            String _password = request.getParameter("password");
            try {
                if (_username != null) {
                    if (_username.equals("admin") && _password.equals("admin")) {
                        response.sendRedirect("welcome.jsp");
                    } else {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Username or Password incorrect');");
                        out.println("location='index.jsp';");
                        out.println("</script>");
                    }
                }
            } catch (IOException ex) {
                out.println("Error" + ex.getMessage());
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
