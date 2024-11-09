package com.amstech.dream.bags.servlet;

import java.io.IOException;

import com.amstech.dream.bags.dao.UserDAO;
import com.amstech.dream.bags.dto.UserDTO;
import com.amstech.dream.bags.service.UserService;
import com.amstech.dream.bags.util.DBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Users")
public class UserServlet extends HttpServlet {
	

	private UserService userService;
	private UserDAO userDAO;
	private DBUtil dbUtil;


    public UserServlet() {
    	System.out.println("Creating Dream bag UserServlet Object");
    	this.dbUtil = new DBUtil();
		this.userDAO = new UserDAO(dbUtil);
		this.userService = new UserService(userDAO);
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("UserServlet: DoPost method");

		String task = request.getParameter("task");
		System.out.println("Task: " + task);

		if (task.equalsIgnoreCase("login"))
			login(request, response);
		else if (task.equalsIgnoreCase("signup"))
			saveUser(request, response);
		else if (task.equalsIgnoreCase("order"))
			saveUser(request, response);
		else if (task.equalsIgnoreCase("updateById"))
			updateById(request, response);
	}


	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			UserDTO userDTO = userService.login(email, password);
			if (userDTO != null) {
				System.out.println("User login successfully.");
				
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				request.setAttribute("activeUserDTO", userDTO);
				rd.forward(request, response);

			} else {
				System.out.println("Username password is wrong.");
				
				RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
				request.setAttribute("status", "Failed");
				request.setAttribute("message", "Username password is wrong");
				request.setAttribute("redirectUrl", "login.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
			request.setAttribute("status", "Failed");
			request.setAttribute("message", e.getMessage());
			request.setAttribute("redirectUrl", "signup.jsp");
			rd.forward(request, response);
			response.sendRedirect("signup.jsp");
		}
	}


	private void saveUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		response.getWriter().append("Saving user detail...");

		UserDTO userDTO = new UserDTO();
		userDTO.setFirst_name(request.getParameter("first_name"));
	    userDTO.setLast_name(request.getParameter("last_name"));
		userDTO.setEmail(request.getParameter("email"));
		userDTO.setPassword(request.getParameter("password"));
		userDTO.setMobile_number(request.getParameter("mobile_number"));		
		userDTO.setAddress(request.getParameter("address"));
		userDTO.setCity_id(1);

		try {
			int count = userService.save(userDTO);
			if (count > 0) {
				
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("status", "Success");
				request.setAttribute("message", "User created successfully");
				request.setAttribute("redirectUrl", "login.jsp");
				rd.forward(request, response);

				System.out.println("User account created successfully.");
			} else {
				

				RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
				request.setAttribute("status", "Failed");
				request.setAttribute("message", "Failed to create user account");
				request.setAttribute("redirectUrl", "signup.jsp");
				rd.forward(request, response);

				System.out.println("Failed to create user account.");
			}
		} catch (Exception e) {
			
			RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
			request.setAttribute("status", "Failed");
			request.setAttribute("message", e.getMessage());
			request.setAttribute("redirectUrl", "signup.jsp");
			rd.forward(request, response);
			response.sendRedirect("signup.jsp");
			e.printStackTrace();
		}

		
	}
	



private void updateById(HttpServletRequest request, HttpServletResponse response) {
	
}
}
