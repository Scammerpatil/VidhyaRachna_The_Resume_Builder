package com.novacop.vidhyarachna;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.novacop.helper.ConnectToDB;
import com.novacop.helper.EncryptPassword;
import com.novacop.helper.SessionStorage;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Login() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
		String email = req.getParameter("userEmail");
		String rawPassword = req.getParameter("userPassword");

		Connection con = ConnectToDB.connect();
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM USERS WHERE EMAIL = ?");
			ps.setString(1, email);			
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				String storedHash = rs.getString("password");

				Boolean passwordMatch = EncryptPassword.checkPassword(rawPassword, storedHash);

				if (passwordMatch) {
					SessionStorage.setUserEmail(rs.getString("email"));
					HttpSession session = req.getSession(true);
					session.setAttribute("userEmail", rs.getString("email"));
					session.setAttribute("userName", rs.getObject("username"));
					res.sendRedirect("userdashboard");
				} else {
					System.out.println("Invalid credentials provided.");
					res.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid Credentials");
				}
	        } else {
				System.out.println("User not found for email: " + email);
	            res.sendRedirect("index.jsp?status=failure");
	        }
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Database error occurred.");
			res.sendRedirect("index.jsp?status=error");
		}
	}
}
