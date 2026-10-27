package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/save-request")
public class servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty() || message == null || message.trim().isEmpty()) {

            response.sendRedirect(request.getContextPath() + "/save-request.jsp");
            return;
        }
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("message", message);
        request.getRequestDispatcher("/success.jsp")
                .forward(request, response);
    }
}