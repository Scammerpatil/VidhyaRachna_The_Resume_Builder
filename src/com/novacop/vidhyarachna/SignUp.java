package com.novacop.vidhyarachna;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.novacop.helper.ConnectToDB;
import com.novacop.helper.EncryptPassword;

public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignUp() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
		String username = req.getParameter("userName");
		String email = req.getParameter("userEmail");
		String rawPassword= req.getParameter("userPassword");
		String password = EncryptPassword.encrpytPassword(rawPassword);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		Connection con = ConnectToDB.connect();
		try {
			PreparedStatement ps = con.prepareStatement("INSERT INTO users values(?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2, username);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setTimestamp(5, timestamp);
			int i = ps.executeUpdate();
			System.out.println(i);
			if (i > 0) {
	            res.sendRedirect("index.jsp?status=success");
	        } else {
	            res.sendRedirect("index.jsp?status=failure");
	        }
		} catch (SQLException e) {
			e.printStackTrace();
			 res.sendRedirect("index.jsp?status=error");
		}
	}
}

