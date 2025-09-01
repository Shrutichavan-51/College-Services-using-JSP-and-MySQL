package db;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class SignupServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String userid = request.getParameter("userid");
        String contact = request.getParameter("contact");
        String state = request.getParameter("state");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        boolean registrationSuccess = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/userdb", "root", "5151");

            String sql = "INSERT INTO users (name, userid, contact, state, gender, email, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, userid);
            ps.setString(3, contact);
            ps.setString(4, state);
            ps.setString(5, gender);
            ps.setString(6, email);
            ps.setString(7, password);

            int result = ps.executeUpdate();
            registrationSuccess = (result > 0);

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (registrationSuccess) {
            response.sendRedirect("success.html");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('Registration Failed!');");
            out.println("window.location.href = 'home.jsp';");
            out.println("</script>");
        }
    }
}
