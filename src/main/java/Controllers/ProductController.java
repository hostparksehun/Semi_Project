package Controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.ProductDAO;
import DTO.ProductDTO;

@WebServlet("*.ProductController")
public class ProductController extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String uri = request.getRequestURI();
		
		ProductDAO dao = ProductDAO.getInstance();

		try {	
	     if(uri.equals("/list.ProductController")) {

				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productList.jsp").forward(request, response);

	            
		}else if(uri.equals("/productA10.ProductController")){
		
			List<ProductDTO> list;
			list = dao.selectAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/Product/productA10.jsp").forward(request, response);

			
			
		}else if(uri.equals("/productA20.ProductController")){
			
			List<ProductDTO> list;
			list = dao.selectAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/Product/productA20.jsp").forward(request, response);
			
			
			}else if(uri.equals("/productA30.ProductController")){
				
				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productA30.jsp").forward(request, response);
				
			}else if(uri.equals("/productA40.ProductController")){
				
				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productA40.jsp").forward(request, response);
				
			}else if(uri.equals("/productA50.ProductController")){
			
				List<ProductDTO> list;
				list = dao.selectAll();
				request.setAttribute("list", list);
				request.getRequestDispatcher("/Product/productA50.jsp").forward(request, response);
			
			}else if(uri.equals("/add.ProductController")) {
			
				response.sendRedirect("/Product/productAdd.jsp");
				
     		}else if(uri.equals("/input.ProductController")) {
     			
     			request.setCharacterEncoding("utf-8");
     			
     			// 파일 처리
     			int maxSize = 1024*1024*1024;
     			
     			String savePath = request.getServletContext().getRealPath("thumbnail/");
     			
     			System.out.println(savePath);
     			
     			File filePath = new File(savePath);
     			
     			if(!filePath.exists()) { filePath.mkdir(); };
     			
     			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF8", new DefaultFileRenamePolicy());

    			String oriName = multi.getOriginalFileName("product_img");
    			String sysName = multi.getFilesystemName("product_img");

    			System.out.println(oriName);
    			System.out.println(sysName);
    			// DB입력
    			
    			String product_name = multi.getParameter("product_name"); 
    			String search_name = multi.getParameter("search_name"); 
    			String product_area = multi.getParameter("product_area");
    			int seq = 0; 
    			String product_code = multi.getParameter("product_code"); 
    			String kind = multi.getParameter("kind");
    			int choose_count = 0; 
    			int capacity = Integer.parseInt(multi.getParameter("capacity")); ;
    			float grade = Float.parseFloat(multi.getParameter("grade")); 
    			float abv = Float.parseFloat(multi.getParameter("abv")); 
    			int price = Integer.parseInt(multi.getParameter("price")); 
    			String brewery = multi.getParameter("brewery"); 
    			String adress1 = multi.getParameter("adress1"); 
    			String adress2 = multi.getParameter("adress2");
    			String smry = multi.getParameter("smry");
    			
    			ProductDTO dto = new ProductDTO(product_name, search_name, product_area, seq, product_code, kind, choose_count, price, abv, adress1, adress2, brewery, capacity, grade, smry, oriName, sysName);
    			
    			int result = dao.insert(dto);
    			
    			response.sendRedirect("/add.ProductController");

     		}
	     
	     
		} catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}

	}
		
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
