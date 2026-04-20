<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Gym Membership Registration</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 50px; background-color: #f4f4f4; }
        .form-container { background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); max-width: 400px; margin: auto; }
        input, select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; padding: 10px; background-color: #28a745; color: white; border: none; border-radius: 4px; cursor: pointer; }
        button:hover { background-color: #218838; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Gym Membership Form</h2>
        <form action="register" method="POST">
            <label>Full Name:</label>
            <input type="text" name="fullName" required>
            
            <label>Email:</label>
            <input type="email" name="email" required>
            
            <label>Phone:</label>
            <input type="text" name="phone" required>
            
            <label>Membership Plan:</label>
            <select name="plan">
                <option value="Monthly">Monthly - $30</option>
                <option value="Quarterly">Quarterly - $80</option>
                <option value="Yearly">Yearly - $300</option>
            </select>
            
            <button type="submit">Register Member</button>
        </form>
    </div>
</body>
</html>
