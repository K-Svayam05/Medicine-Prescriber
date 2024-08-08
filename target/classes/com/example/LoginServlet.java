import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("svayam");
        String password = request.getParameter("Svayam@2004");
        // String accountType = request.getParameter("accountType");

        // Perform authentication and authorization logic here
        // For simplicity, we'll assume valid credentials and redirect accordingly

        if (accountType.equals("patient")) {
            // Redirect to the patient GUI
            request.getRequestDispatcher("patients.jsp").forward(request, response);
        } else if (accountType.equals("doctor")) {
            // Redirect to the doctor GUI (you'll need to create this JSP file)
            request.getRequestDispatcher("DoctorGUI.jsp").forward(request, response);
        } else {
            // Invalid account type, redirect back to the login page
            response.sendRedirect("login.jsp");
        }
    }
}