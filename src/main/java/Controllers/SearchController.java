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
import SearchApp.Search;


@WebServlet("*.search")
public class SearchController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		Search searchApp = new Search();
		
		String uri =  request.getRequestURI();
		
		try {
			if (uri.equals("/search.search")) {
				request.setCharacterEncoding("utf-8");
				
				// 검색 조건
				boolean[] searchType = new boolean[] {false, false, false, false, false};
				
				// 검색 객체
				String[] alcholArr;
				String[] areaArr; 
				String[] gradeString;
				String product_name;
				float abv;
				int grade = 0;
				
				String sql;
				
				
				String search_text = request.getParameter("search_text");
				String search_avb = request.getParameter("avb");
				
				// 검색 조건 분류
				
				if(!(search_text.isEmpty())) { // 입력어가 있다면
					
					product_name = sDAO.getWord(search_text); // 파싱하고
					searchType[0] = true; // 입력 검색을 활성화하라
					
				} else {
					
					product_name = null;
					
				}
				
				
				if(!(search_avb.equals(""))) { // 술 도수를 입력했으면
					
					abv = Float.parseFloat(search_avb); // float로 바꾸고
					searchType[4] = true;
					
				} else {
					
					abv = 0;
					
				}
				
				if(!(request.getParameterValues("alchol") == null)) { // 술 종류를 택했다면
					
					alcholArr = request.getParameterValues("alchol");
					searchType[1] = true;
					
				} else {
					
					alcholArr = null;
				}
				
				if(!(request.getParameterValues("area") == null)) {
					
					areaArr = request.getParameterValues("area");
					searchType[2] = true;
					
				} else {
					
					areaArr = null;
				
				}
				
				if(!(request.getParameterValues("grade") == null)) {
					
					gradeString = request.getParameterValues("grade");
					
					grade = Integer.parseInt(gradeString[0]);
					
					searchType[3] = true;
					
				} else {
					
					gradeString = null;
				}
				
				// -------------------------------------------- 검색 --------------------------------------------------------------
				
				// 일반 검색
				if ((product_name) != null && areaArr == null && gradeString == null && abv == 0 && alcholArr == null ) {
					System.out.println(product_name);
					List<SearchDTO> list = sDAO.SearchByText(product_name);
					
					// JSP로 넘길 예정
					for (SearchDTO dto : list) {
						
						System.out.println("상품명 : " + dto.getProduct_name());
						System.out.println("상품코드 : " + dto.getProduct_code());
						System.out.println("게시글 번호 : " + dto.getSeq());
						System.out.println("첨부파일 번호 : " + dto.getFile_index());
						
					}
					
					
				// 상세 검색
				} else if ((product_name) == null && (areaArr != null || gradeString != null || abv != 0 || alcholArr != null || grade != 0)) {
					
					sql = searchApp.getSql(searchType);
					System.out.println(sql);
					
					
					
				} else if ((product_name) != null && (areaArr != null || gradeString != null || abv != 0 || alcholArr != null || grade != 0)) {
					
					sql = searchApp.getSql(searchType);
					System.out.println(sql);
					
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
