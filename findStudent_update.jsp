	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Find Student Details</title>
	<style>
	    * {
	        box-sizing: border-box;
	        margin: 0;
	        padding: 0;
	    }
	
	    body {
	        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	        background: linear-gradient(135deg, #00c9ff, #92fe9d); /* Stylish gradient */
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        height: 100vh;
	    }
	
	    .form-container {
	        background-color: #ffffff;
	        padding: 40px 30px;
	        border-radius: 16px;
	        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
	        width: 100%;
	        max-width: 400px;
	        transition: transform 0.3s ease;
	    }
	
	    .form-container:hover {
	        transform: translateY(-4px);
	    }
	
	    h2 {
	        text-align: center;
	        margin-bottom: 30px;
	        color: #2c3e50;
	        font-size: 24px;
	    }
	
	    label {
	        display: block;
	        margin-bottom: 8px;
	        font-weight: 600;
	        color: #444;
	    }
	
	    input[type="tel"] {
	        width: 100%;
	        padding: 12px 10px;
	        margin-bottom: 20px;
	        border: 1px solid #ccc;
	        border-radius: 8px;
	        font-size: 15px;
	        transition: border-color 0.3s, background-color 0.3s;
	    }
	
	    input[type="tel"]:focus {
	        border-color: #007bff;
	        background-color: #f0f8ff;
	        outline: none;
	    }
	
	    button {
	        width: 100%;
	        padding: 12px;
	        background-color: #007bff;
	        color: #fff;
	        border: none;
	        border-radius: 8px;
	        font-size: 16px;
	        font-weight: bold;
	        cursor: pointer;
	        transition: background-color 0.3s ease;
	    }
	
	    button:hover {
	        background-color: #0056b3;
	    }
	
	    @media (max-width: 480px) {
	        .form-container {
	            padding: 30px 20px;
	        }
	
	        h2 {
	            font-size: 20px;
	        }
	    }
	</style>
	
	</head>
	<body>
	
	<div class="form-container">
	    <h2>Find Student Details</h2>
	    <form action="updateStudent" method="post">
	        <label for="phno">Phone Number:</label>
	        <input type="tel" id="phno" name="phno" pattern="[0-9]{10}" required />
	        <button type="submit">Submit</button>
	    </form>
	</div>
	
	</body>
	</html>
