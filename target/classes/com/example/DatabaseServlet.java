import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/database")
public class DatabaseServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Database connection details
        String url = "jdbc:mysql://localhost:3306/MedicinePrescriber";
        String user = "root";
        String password = "Svayam@2004";

        try {
            // Connect to the database
            Connection conn = DriverManager.getConnection(url, user, password);

            // Execute a query
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM patients");

            // Store the results in a list
            List<Patient> patients = new ArrayList<>();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String contact = rs.getString("contact");
                String gender = rs.getString("gender");
                String dob = rs.getString("dob");
                String disease = rs.getString("disease");
                String prescription = rs.getString("prescription");
                patients.add(new Patient(id, name, contact, gender, dob, disease, prescription));
            }

            // Forward the list to a JSP page for rendering
            request.setAttribute("patients", patients);
            request.getRequestDispatcher("patients.jsp").forward(request, response);

            // Close resources
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Patient class
    private static class Patient {
        int id;
        String name;
        String contact;
        String gender;
        String dob;
        String disease;
        String prescription;

        public Patient(int id, String name, String contact, String gender, String dob, String disease, String prescription) {
            this.id = id;
            this.name = name;
            this.contact = contact;
            this.gender = gender;
            this.dob = dob;
            this.disease = disease;
            this.prescription = prescription;
        }

        // Getters and setters
    }
}