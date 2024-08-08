<!-- <%@ page import="java.util.Date" %>
<html>
    <body>
        <h2>Hello from JSP!</h2>
        <p>Current time: <%= new Date() %></p>
    </body>
</html> -->

<!-- 
<%@ page import="java.sql.*" %>
<%@ page import="javax.swing.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.event.*" %>

<%!
    private Container c;
    private JLabel title;
    private Container c;
    private JLabel title;
    private JLabel name;
    private JTextField tname;
    private JLabel mno;
    private JTextField tmno;
    private JLabel gender;
    private JRadioButton male;
    private JRadioButton female;
    private ButtonGroup gengp;
    private JLabel dob;
    private JComboBox<String> date;
    private JComboBox<String> month;
    private JComboBox<String> year;
    private JComboBox<String> diseaseComboBox;
    private JLabel add;
    private JButton prescribeButton;
    private JButton reset;
    private JTextArea tout;
    private JTextArea resadd;
    private JLabel res;

    private String dates[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
            "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
            "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31" };
    private String months[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug",
            "Sep", "Oct", "Nov", "Dec" };
    private String years[] = { "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002",
            "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010",
            "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018",
            "2019", "2020", "2021", "2022", "2023", "2024" };
    private String diseases[] = { "Cold", "Fever", "Headache", "Stomachache", "Allergy" };


    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == prescribeButton) {
            String name = tname.getText();
            String contact = tmno.getText();
            String gender = male.isSelected() ? "Male" : "Female";
            String dob = (String) date.getSelectedItem() + "/" + (String) month.getSelectedItem() + "/"
                    + (String) year.getSelectedItem();
            String selectedDisease = (String) diseaseComboBox.getSelectedItem();
            String prescribedMedicines = getPrescribedMedicines(selectedDisease);

            String output = "Patient Details:\n" +
                    "Name: " + name + "\n" +
                    "Contact: " + contact + "\n" +
                    "Gender: " + gender + "\n" +
                    "DOB: " + dob + "\n\n" + prescribedMedicines;

            tout.setText(output);
            tout.setEditable(false);
            res.setText("Prescription Successfully Generated.");
        } else if (e.getSource() == reset) {
            tname.setText("");
            tmno.setText("");
            male.setSelected(true);
            female.setSelected(false);
            date.setSelectedIndex(0);
            month.setSelectedIndex(0);
            year.setSelectedIndex(0);
            diseaseComboBox.setSelectedIndex(0);
            tout.setText("");
            res.setText("");
        }
    } -->
<!-- 
    private String getPrescribedMedicines(String disease) {
        switch (disease) {
            case "Cold":
                return "Prescribed Medicines:\n1. Paracetamol\n2. Cough Syrup\n3. Vitamin C";
            case "Fever":
                return "Prescribed Medicines:\n1. Ibuprofen\n2. Fluids\n3. Rest";
            case "Headache":
                return "Prescribed Medicines:\n1. Aspirin\n2. Pain Relief Gel\n3. Rest in a dark room";
            case "Stomachache":
                return "Prescribed Medicines:\n1. Antacids\n2. Probiotics\n3. BRAT diet (Bananas, Rice, Applesauce, Toast)";
            case "Allergy":
                return "Prescribed Medicines:\n1. Antihistamines\n2. Corticosteroids\n3. Epinephrine (in severe cases)";
            default:
                return "No specific medicine prescribed for this disease.";
        }
    }
%>

<%
    Lab8 f = new Lab8();
%> -->

<!-- <html>
<head>
    <title>Medicine Prescriber</title>
</head>
<body>
    <%-- Set window properties --%>
    <% f.setBounds(300, 90, 900, 600); %>
    <% f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); %>
    <% f.setResizable(false); %>
  
    <%-- Get content pane and set properties --%>
    <% c = f.getContentPane(); %>
    <% c.setLayout(null); %>
    <% c.setBackground(Color.lightGray); %>
  
    <%-- Title Label --%>
    <jsp:useBean id="title" class="java.awt.JLabel" scope="page">
      <jsp:setProperty name="text" value="Medicine Prescriber" />
      <jsp:setProperty name="font" property="font" value="new Font('Arial', Font.PLAIN, 30)" />
      <jsp:setProperty name="size" property="preferredSize" value="300, 30" />
      <jsp:setProperty name="location" property="bounds" value="300, 30" />
    </jsp:useBean>
    <% c.add(title); %>
  
    <%-- Make window visible --%>
    <% setVisible(true); %>
  </body>
  
</html> -->



<!DOCTYPE html>
<html>
<head>
  <title>Medicine Prescriber</title>
  <link rel="stylesheet" href="styles.css"> </head>
<body>
  <h1>Medicine Prescriber</h1>
  <form id="prescriptionForm">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <label for="disease">Disease:</label>
    <select id="disease" name="disease" required>
      <option value="">Select Disease</option>
      <option value="cold">Cold</option>
      <option value="fever">Fever</option>
      </select>
    <button type="button" id="prescribeButton">Prescribe</button>
  </form>
  <div id="prescription"></div> <script src="script.js"></script> </body>
</html>
