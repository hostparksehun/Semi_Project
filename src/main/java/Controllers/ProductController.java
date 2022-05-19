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

		String uri = request.getRequestURI();
		ProductDAO dao = new ProductDAO();

		try {	
	     if(uri.equals("/list.ProductController")) {

				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productList.jsp").forward(request, response);
	    
		}else if(uri.equals("/add.ProductController")) {
		
				
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
