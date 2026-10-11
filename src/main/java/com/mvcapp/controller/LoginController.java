package com.mvcapp.controller;

import com.mvcapp.model.Auth;
import com.mvcapp.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

  private final Auth auth = new Auth();

  @Override
  protected void doGet(HttpServletRequest request,
    HttpServletResponse response)
  throws ServletException, IOException {

    // Display the login page
    request.getRequestDispatcher(
        "/WEB-INF/views/loginPage.jsp")
      .forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request,
    HttpServletResponse response)
  throws ServletException, IOException {

    // Read information submitted from the login form
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Ask the Model to verify the credentials
    User user = auth.authenticate(username, password);

    if (user == null) {

      // Login unsuccessful
      request.setAttribute(
        "error", "Invalid username or password.");

      request.getRequestDispatcher(
          "/WEB-INF/views/errorPage.jsp")
        .forward(request, response);
      return;
    }

    //Login successful
    request.setAttribute("username", user.getUsername());

    // Select the appropriate View based on the user role
    String page;

    switch (user.getRole()) {
    case "admin":
      page = "/WEB-INF/views/adminPage.jsp";
      break;

    case "coach":
      page = "/WEB-INF/views/coachPage.jsp";
      break;

    case "trainee":
      page = "/WEB-INF/views/traineePage.jsp";
      break;

    default:
      page = "/WEB-INF/views/errorPage.jsp";
      request.setAttribute(
        "error", "Unknown user role.");
    }

    // Forward the request to the selected JSP page
    request.getRequestDispatcher(page)
      .forward(request, response);

  }
}