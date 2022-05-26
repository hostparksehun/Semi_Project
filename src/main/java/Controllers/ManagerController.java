package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DAO.ManagerDAO;
import DTO.BoardDTO;
import DTO.ManagerDTO;

@WebServlet("*.manager")
public class ManagerController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		ManagerDAO MgDAO = ManagerDAO.getInstance();
		String uri = request.getRequestURI();
		
		
		try {
			// 총 게시글 관리
			if(uri.equals("/article.manager")) {
				
				int count = MgDAO.dataCount();
				
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				
				request.getSession().setAttribute("cpage", cpage);
				
				List<ManagerDTO> list = MgDAO.selectByPage(cpage);
				
				String pageNavi  = MgDAO.getPageNavi(cpage);
				
				request.setAttribute("list", list);
				request.setAttribute("count", count);
				request.setAttribute("navi", pageNavi);
				
				request.getRequestDispatcher("/Manager/articleManager.jsp").forward(request, response);
				
			// 신고 게시글 삭제	
			} else if (uri.equals("/delAcl.manager")) {
				
				int[] arr1 = new int[] {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
				
				String[] arr2; 
				
				
				if(request.getParameter("del") == null) {
					
					response.sendRedirect("/article.manager?cpage=1");
					
				} else {
					
					arr2 = request.getParameterValues("del");
					
					for(int i = 0; i<arr2.length; i++) {
						
					 arr1[i] = Integer.parseInt(arr2[i]);
						
					}
				
				}
				
				int result = MgDAO.deleteArticle(arr1);
				
				response.sendRedirect("/article.manager?cpage=1");
				
				
			// 회원 관리	
			} else if (uri.equals("/member.manager")) {
				
				
			}
			
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
		
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
