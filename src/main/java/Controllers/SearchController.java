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


@WebServlet("*.search")
public class SearchController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SearchDAO sDAO = SearchDAO.getInstance();
		
		String uri =  request.getRequestURI();
		
		try {
			if (uri.equals("/search.search")) {
				
				String[] alcholArr;
				String[] areaArr; 
				String[] scoreStringArr;
				String product_name;
				float abv;
				
				request.getParameterValues("score"); // int로 변환
				
				request.setCharacterEncoding("utf-8");
				
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
				
				if(!(request.getParameterValues("score") == null)) {
					
					scoreStringArr = request.getParameterValues("score");
					
					List<Integer> scoreArr = new ArrayList<Integer>();
					
					for(int i=0; i<scoreStringArr.length; i++) {
						
						scoreArr.add(Integer.parseInt(scoreStringArr[i]));
						
					}
					
				} else {
					
					scoreStringArr = null;
				}
				
				// -------------------------------------------- 검색 --------------------------------------------------------------
				
				// 일반 검색
				if ((product_name) != null && areaArr == null && scoreStringArr == null && abv == 0 && alcholArr == null ) {
					
					
					
					
					
				// 상세 검색
				} else if ((product_name) == null && areaArr != null || scoreStringArr != null || abv == 0 || alcholArr != null) {
					
					
					
					
					
					
				} else if ((product_name) != null && areaArr != null || scoreStringArr != null || abv == 0 || alcholArr != null) {
					
				
					
					
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
