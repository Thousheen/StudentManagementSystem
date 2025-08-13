<%@page import="dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Student student = (Student) request.getAttribute("student");

	session.setAttribute("OldStudent",student);
	
	%>
	
	<form action="saveUpdateStudent" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required />


        <label>Gender:</label>
        <div class="gender-options">
            <label><input type="radio" name="gender" value="Male" required /> Male</label>
            <label><input type="radio" name="gender" value="Female" required /> Female</label>
        </div>

        <button type="submit">Submit</button>
    </form>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #74ebd5, #ACB6E5); /* Gradient background */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: white;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        max-width: 400px;
        width: 100%;
    }

    label {
        display: block;
        margin-top: 15px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
    }

    .gender-options {
        margin-top: 10px;
    }

    .gender-options label {
        margin-right: 15px;
        font-weight: normal;
    }

    button {
        margin-top: 20px;
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
    }
</style>

</body>
</html>