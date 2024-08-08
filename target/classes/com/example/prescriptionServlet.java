import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/prescriptions") // URL mapping for this servlet
public class PrescriptionServlet extends HttpServlet {

  private static final Map<String, String> prescriptions = new HashMap<>();

  static {
    prescriptions.put("cold", "1. Paracetamol\n2. Cough Syrup\n3. Vitamin C");
    prescriptions.put("fever", "1. Ibuprofen\n2. Fluids\n3. Rest");
    prescriptions.put("headache", "1. Aspirin\n2. Pain Relief Gel\n3. Rest in a dark room");
    prescriptions.put("stomachache", "1. Antacids\n2. Probiotics\n3. BRAT diet (Bananas, Rice, Applesauce, Toast)");
    prescriptions.put("allergy", "1. Antihistamines\n2. Corticosteroids\n3. Epinephrine (in severe cases)");
    // ... add other disease-prescription mappings ...
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String disease = request.getParameter("disease");
    String prescription = prescriptions.get(disease);

    // Handle potential cases where disease is not found

    response.setContentType("application/json"); // Set response content type
    response.getWriter().write(prescription); // Send prescription as JSON
  }
}
