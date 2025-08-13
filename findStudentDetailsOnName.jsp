<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Student Details</title>


</head>
<body>

<div class="form-container">
    <h2>Find Student Details</h2>
    <form action="findStudentOnNameDetails" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
