<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.DatabaseServlet.Patient" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient List</title>
</head>
<body>
    <h1>Patient List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Disease</th>
            <th>Prescription</th>
        </tr>
        <%
            List<Patient> patients = (List<Patient>) request.getAttribute("patients");
            for (Patient patient : patients) {
        %>
        <tr>
            <td><%= patient.id %></td>
            <td><%= patient.name %></td>
            <td><%= patient.contact %></td>
            <td><%= patient.gender %></td>
            <td><%= patient.dob %></td>
            <td><%= patient.disease %></td>
            <td><%= patient.prescription %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>