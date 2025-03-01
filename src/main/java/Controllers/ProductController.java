package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAO;
import DTO.ProductDTO;

@WebServlet("*.ProductController")
public class ProductController extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String uri = request.getRequestURI();
		ProductDAO dao = new ProductDAO();

		try {	
	     if(uri.equals("/list.ProductController")) {

				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productList.jsp").forward(request, response);
//				response.sendRedirect("/Product/productList.jsp");
	            
		}else if(uri.equals("/productAll_01.ProductController")){
		
			response.sendRedirect("/Product/productAll_01.jsp");
			
			
		}else if(uri.equals("/productAll_02.ProductController")){
			
			response.sendRedirect("/Product/productAll_02.jsp");
			
			
			}else if(uri.equals("/productAll_03.ProductController")){
				
				response.sendRedirect("/Product/productAll_03.jsp");
				
			}else if(uri.equals("/productAll_04.ProductController")){
				
				response.sendRedirect("/Product/productAll_04.jsp");
				
			}else if(uri.equals("/add.ProductController")) {
			
				response.sendRedirect("/Product/productAdd.jsp");
				
     		}else if(uri.equals("/Input.ProductController")) {
     			
    			String product_name = request.getParameter("product_name");
    			String product_area = request.getParameter("product_area");
    		    String producer_name = request.getParameter("producer_name");
//    		    int file_indext = Integer.parseInt(request.getParameter("file_indext"));
    			String product_code = request.getParameter("product_code");
//    			int kind = Integer.parseInt(request.getParameter("kind"));
//    			int choose_count = Integer.parseInt(request.getParameter("choose_count"));
    			int price = Integer.parseInt(request.getParameter("price"));
    			int abv = Integer.parseInt(request.getParameter("abv"));
    			String dealer_number = request.getParameter("dealer_number");
    			String adress1 = request.getParameter("adress1");
    			String adress2 = request.getParameter("adress2");
    			int capacity = Integer.parseInt(request.getParameter("capacity"));
    			
     			dao.insert(new ProductDTO(product_name, product_area, producer_name, 0, 0, product_code, 0, 0, price, abv, dealer_number, adress1, adress2, capacity));
    			response.sendRedirect("/Product/productList.jsp");
     		}
	
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
