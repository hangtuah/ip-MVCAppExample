<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Trainee Dashboard | MVC App Example</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>

    <div class="dashboard-box">

        <div class="app-name">
            MVC APP EXAMPLE
        </div>

        <div class="role-badge">
            Trainee
        </div>

        <h1>Trainee Dashboard</h1>

        <h2>Welcome, ${username}!</h2>

        <p class="description">
            You have successfully logged in as Trainee.
        </p>

        <div class="divider"></div>

        <a class="btn-back"
           href="${pageContext.request.contextPath}/login">
            Back to Login
        </a>

        <div class="footer">
            SCSE3203 - Internet Programming
        </div>

    </div>

</body>
</html>
