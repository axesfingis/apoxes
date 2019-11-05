package loginpage;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import loginpage.DatabaseConnection;

@WebServlet("/TryLogin")
public class TryLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TryLogin() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			PrintWriter out = response.getWriter();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String action = request.getParameter("action");
			
			if(action.equals("login")) {
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from user_info where username='"+username+"' and password='"+password+"'");
				if(rs.next()) {
					response.sendRedirect("success.jsp");
				}else {
					response.sendRedirect("fail.jsp");
				}
				st.close();
				con.close();
			}else if(action.equals("register")) {
				PreparedStatement st = con.prepareStatement("insert into user_info values(?, ?)");
				String password2 = request.getParameter("password2");
				if(!password2.equals(password)) {
					out.println("<html><body><b>Passwords do not match!</b></body></html>");
				}else {
					st.setString(1, username);
					st.setString(2, password);
					st.executeUpdate();
					out.println("<html><body><b>Succesfully registered!</b></body></html>");
					response.sendRedirect("login.jsp");
				}
				st.close();
				con.close();
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
