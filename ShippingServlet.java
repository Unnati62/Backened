package com.amstech.dream.bags.servlet;

import java.io.IOException;
import java.util.List;

import com.amstech.dream.bags.dao.ShippingDAO;
import com.amstech.dream.bags.dto.ShippingDTO;
import com.amstech.dream.bags.service.ShippingService;
import com.amstech.dream.bags.util.DBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/shipping")
public class ShippingServlet extends HttpServlet {

    	private ShippingService shippingService;
		private ShippingDAO shippingDAO;
		private DBUtil dbUtil;


	    public ShippingServlet() {
	    	System.out.println("Creating ShippingServlet Object");
			this.dbUtil = new DBUtil();
			this.shippingDAO = new ShippingDAO(dbUtil);
			this.shippingService = new ShippingService(shippingDAO);
	    }
		
   	
		 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			    System.out.println("ShippingServlet: DoGet method");

	            String task = request.getParameter("task");

		        System.out.println("task: " + task);

		        if (task == null) {
		            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Task parameter is missing");
		            return;
		        }
		        
	            if (task.equalsIgnoreCase("findById")) {
	                findById(request, response);
	            } else if (task.equalsIgnoreCase("findAll")) {
	                findAll(request, response);
	            }
		    }

		  
		
		    private void findAll(HttpServletRequest request, HttpServletResponse response) {
			// TODO Auto-generated method stub
			
		}


			private void findById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        String id = request.getParameter("shipping_order_detail_item_id");

		     
		        System.out.println("Fetching Shipping detail for ID: " + id);

		        try {
		        	ShippingDTO shippingDTO = shippingService.findById(Integer.parseInt(id));
		            if (shippingDTO != null) {
		                System.out.println("Shipping found successful bookName: " + shippingDTO.getBagName());
		                RequestDispatcher rd = request.getRequestDispatcher("shipping.jsp");
						request.setAttribute("shippingDTOEdit", shippingDTO);
						rd.forward(request, response);

		            } else {
		                System.out.println("Shipping not found : " );
		                RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
						request.setAttribute("status", "Failed");
						request.setAttribute("message", "Failed to find all shipping");
						request.setAttribute("redirectUrl", "order.jsp");
						rd.forward(request, response);
		                
		            }
		        } catch (Exception e) {
	                e.printStackTrace();
		            System.out.println("Invalid Shipping format" );
		            RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
					request.setAttribute("status", "Failed");
					request.setAttribute("message", e.getMessage());
					request.setAttribute("redirectUrl", "order.jsp");
					rd.forward(request, response);
					response.sendRedirect("order.jsp"); 
		        } 

		    }
		    private void forwardToMessagePage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
		        RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
		        request.setAttribute("status", "Failed");
		        request.setAttribute("message", message);
		        request.setAttribute("redirectUrl", "order.jsp");
		        rd.forward(request, response);
		    }
		

}
