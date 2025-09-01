import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/CollegeSearchServlet")
public class CollegeSearchServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String course = request.getParameter("course");
        String state = request.getParameter("state");
        String budgetStr = request.getParameter("budget");
        String gender = request.getParameter("gender");
        String hostel = request.getParameter("hostel");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to DB (adjust database URL, user, pass)
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_db", "root", "your_password");

            String query = "SELECT * FROM colleges WHERE course LIKE ? AND state LIKE ? AND fees <= ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "%" + course + "%");
            ps.setString(2, "%" + state + "%");
            ps.setInt(3, Integer.parseInt(budgetStr));

            ResultSet rs = ps.executeQuery();

            out.println("<html><body>");
            out.println("<h2>Matching Colleges:</h2>");
            out.println("<table border='1'><tr><th>Name</th><th>State</th><th>Course</th><th>Fees</th></tr>");

            boolean found = false;
            while (rs.next()) {
                found = true;
                out.println("<tr>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("state") + "</td>");
                out.println("<td>" + rs.getString("course") + "</td>");
                out.println("<td>" + rs.getInt("fees") + "</td>");
                out.println("</tr>");
            }

            if (!found) {
                out.println("<tr><td colspan='4'>No colleges found matching your criteria.</td></tr>");
            }

            out.println("</table>");
            out.println("</body></html>");

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    }
}
