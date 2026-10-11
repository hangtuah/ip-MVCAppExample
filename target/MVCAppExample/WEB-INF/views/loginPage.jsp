
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | MVC App Example</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>

<body>
    <div class="login-box">
        <h2>Welcome Back</h2>
        <p class="subtitle">Please sign in to your account</p>

        <form action="${pageContext.request.contextPath}/login"
              method="post">

            <label for="username">Username</label>
            <input type="text"
                   id="username"
                   name="username"
                   placeholder="Enter your username"
                   autocomplete="username"
                   required>

            <label for="password">Password</label>
            <input type="password"
                   id="password"
                   name="password"
                   placeholder="Enter your password"
                   autocomplete="current-password"
                   required>

            <button type="submit">Sign In</button>
        </form>

        <div class="footer">
            SCSE3203 - Internet Programming
        </div>
    </div>
</body>
</html>
