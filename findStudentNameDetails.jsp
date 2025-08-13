<%@page import="java.util.List"%>
<%@page import="dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

</head>
<body>
<style>

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #eaf6f6; /* Light teal-blue background */
    margin: 0;
    padding: 50px 20px;
}

table {
    margin: 0 auto;
    border-collapse: collapse;
    width: 60%;
    max-width: 600px;
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

th, td {
    padding: 15px 20px;
    text-align: left;
    border-bottom: 1px solid #dddddd;
}

th {
    background-color: #007bff;
    color: white;
    font-weight: bold;
}

td {
    color: #333333;
}

tr:last-child td {
    border-bottom: none;
}

</style>

	<%
	List<Student> student = (List<Student>) request.getAttribute("student");

	/* int studentId = student.getStudentId();
	String studentName = student.getStudentName();
	String studentEmail = student.getStudentEmail();
	long studentPhno = student.getStudentPhno();
	String studentGender = student.getStudentGender(); */
	for(int i=0;i<student.size();i++){
		<h1> <%= student.get(i).getStudentId();
		
	<%>}%>

	<table>
		<tr>
			<th>ID</th>
			<td><%=studentId%></td>
		</tr>
		<tr>
			<th>Name</th>
			<td><%=studentName%></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><%=studentEmail%></td>
		</tr>
		<tr>
			<th>Phone</th>
			<td><%=studentPhno%></td>
		</tr>
		<tr>
			<th>Gender</th>
			<td><%=studentGender%></td>
		</tr>
	</table>

</body>
</html>
