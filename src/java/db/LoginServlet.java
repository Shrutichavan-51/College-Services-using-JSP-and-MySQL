/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");

        boolean loginSuccess = false;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "5151");

            String sql = "SELECT * FROM users WHERE userid = ? AND password = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, userid);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                loginSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }

        if (loginSuccess) {
            response.sendRedirect("dashboard.jsp");  // ✅ make sure this page exists
        } else {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            out.println("<script type='text/javascript'>");
            out.println("alert('Invalid User ID or Password!');");
            out.println("window.location.href = 'login.jsp';");
            out.println("</script>");
        }
    }
}
