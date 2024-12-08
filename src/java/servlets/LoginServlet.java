package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if ("POST".equals(request.getMethod())) {
            // Get credentials from form
            String formUsername = request.getParameter("username");
            String formPassword = request.getParameter("password");

            // Get credentials from context (to validate against)
            String username = getServletContext().getInitParameter("username");
            String password = getServletContext().getInitParameter("password");

            // Check if username or password is empty
            if (formUsername == null || formUsername.trim().isEmpty() || formPassword == null || formPassword.trim().isEmpty()) {
                // Forward to errorNoInput.jsp when either field is empty
                RequestDispatcher rd = request.getRequestDispatcher("views/errorNoInput.jsp");
                rd.forward(request, response);
            } else if (formUsername.equals(username) && formPassword.equals(password)) {
                // Successful login, forward to success page
                HttpSession session = request.getSession();
                session.setAttribute("isLoggedIn", true);
                session.setAttribute("username", username);
                RequestDispatcher rd = request.getRequestDispatcher("views/success.jsp");
                rd.forward(request, response);
            } else {
                // Failed login, forward to error page
                RequestDispatcher rd = request.getRequestDispatcher("views/errorBoth.jsp");
                rd.forward(request, response);
            }
        } else {
            // Default, forward to login page
            request.getRequestDispatcher("views/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
