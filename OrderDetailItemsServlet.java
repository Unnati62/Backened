package com.amstech.dream.bags.servlet;

import java.io.IOException;

import com.amstech.dream.bags.dao.OrderDetailItemDAO;
import com.amstech.dream.bags.dto.OrderDetailItemDTO;
import com.amstech.dream.bags.service.OrderDetailItemService;
import com.amstech.dream.bags.util.DBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




	@WebServlet("/order")
	public class OrderDetailItemsServlet extends HttpServlet {
		
		private OrderDetailItemService orderDetailItemService;
		private OrderDetailItemDAO orderDetailItemDAO;
		private DBUtil dbUtil;

	    public OrderDetailItemsServlet() {

	    	System.out.println("Creating OrderDetailServlet Object");
			this.dbUtil = new DBUtil();
			this.orderDetailItemDAO = new OrderDetailItemDAO(dbUtil);
			this.orderDetailItemService = new OrderDetailItemService(orderDetailItemDAO);
	    }

		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			System.out.println("OrderDetailItemsServlet: DoGet method");

	        String task = request.getParameter("task");
	        System.out.println("task.....: " + task);

	        if (task.equalsIgnoreCase("findById")) {
	            findById(request, response);
	        } else if (task.equalsIgnoreCase("findAll")) {
	            findAll(request, response);
	        }
			
		}

	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		   
		}
	 
		

		private void findById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String id = request.getParameter("bag_id");
		    
	        System.out.println("Fetching order detail for ID: " + id);

	        try {
	            OrderDetailItemDTO orderDetailItem = orderDetailItemService.findById(Integer.parseInt(id));
	            if (orderDetailItem != null) {
	                System.out.println("Order found, bagName: " + orderDetailItem.getBagName());
	                 
                    request.setAttribute("orderDTOEdit", orderDetailItem);
	                forwardRequest(request, response, "order.jsp");
	                //rd.forward(request, response);
	                
	            } else {
	                System.out.println("Order not found for ID: " + id);
	                setErrorAttributesAndForward(request, response, "Failed to place order by id: " + id);
	            }
	        } catch (NumberFormatException e) {
	            e.printStackTrace();
	            System.out.println("Invalid order id format: " + id);
	            setErrorAttributesAndForward(request, response, "Invalid order id format: " + id);
	        } catch (Exception e) {
	            e.printStackTrace();
	            setErrorAttributesAndForward(request, response, e.getMessage());
	        }
			
		}


		  private void forwardRequest(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
		        RequestDispatcher rd = request.getRequestDispatcher(path);
		        rd.forward(request, response);
		    }

		    private void setErrorAttributesAndForward(HttpServletRequest request, HttpServletResponse response, String errorMessage) throws ServletException, IOException {
		        RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
		        request.setAttribute("status", "Failed");
		        request.setAttribute("message", errorMessage);
		        request.setAttribute("redirectUrl", "search.jsp");
		        rd.forward(request, response);
		    }
	    private void findAll(HttpServletRequest request, HttpServletResponse response) {
			
			
		}

		
	}



