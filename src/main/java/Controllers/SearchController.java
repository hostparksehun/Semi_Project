package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SearchDAO;
import DTO.SearchDTO;


@WebServlet("*.search")
public class SearchController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		
		String uri =  request.getRequestURI();
		
		try {
			if (uri.equals("/search.search")) {
				
				request.setCharacterEncoding("utf-8");
				
				String[] alcholArr;
				String[] areaArr; 
				String[] gradeString;
				String product_name;
				float abv;
				
				
				String search_text = request.getParameter("search_text");
				String search_avb = request.getParameter("avb");
				
				// 파싱
				
				if(!(search_text.equals(""))) {
					
					product_name = sDAO.getWord(search_text);
					
				} else {
					product_name = null;
				}
				
				if(!(search_avb.equals(""))) {
					
					abv = Float.parseFloat(search_avb);
					
				} else {
					abv = 0;
				}
				
				if(!(request.getParameterValues("alchol") == null)) {
					
					alcholArr = request.getParameterValues("alchol");
					
				} else {
					
					alcholArr = null;
				}
				
				if(!(request.getParameterValues("area") == null)) {
					
					areaArr = request.getParameterValues("area");
					
				} else {
					
					areaArr = null;
				
				}
				
				if(!(request.getParameterValues("grade") == null)) {
					
					gradeString = request.getParameterValues("grade");
					
					int grade = Integer.parseInt(gradeString[0]);
					
				} else {
					
					gradeString = null;
				}
				
				// -------------------------------------------- 검색 --------------------------------------------------------------
				
				// 일반 검색
				if ((product_name) != null && areaArr == null && gradeString == null && abv == 0 && alcholArr == null ) {
					
					List<SearchDTO> list = sDAO.SearchByText(product_name);

					// JSP로 넘길 예정
					for (SearchDTO dto : list) {
						
						System.out.println("상품명 : " + dto.getProduct_name());
						System.out.println("상품코드 : " + dto.getProduct_code());
						System.out.println("게시글 번호 : " + dto.getSeq());
						System.out.println("첨부파일 번호 : " + dto.getFile_index());
						
					}
					
					
				// 상세 검색
				} else if ((product_name) == null && (areaArr != null || gradeString != null || abv == 0 || alcholArr != null)) {
					
					
					System.out.println("상세 검색 1");
					
					
				} else if ((product_name) != null && (areaArr != null || gradeString != null || abv == 0 || alcholArr != null)) {
					
				
					System.out.println("상세 검색 2");
					
					
				}
				
				
				
							
				
				
			}
			
			
			
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
