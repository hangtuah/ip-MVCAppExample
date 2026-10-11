
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login Error | MVC App Example</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>

    <div class="dashboard-box">

        <div class="app-name">
            MVC APP EXAMPLE
        </div>

        <div class="role-badge error-badge">
            LOGIN ERROR
        </div>

        <h1>Something Went Wrong</h1>

        <p class="description">
            ${error}
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
