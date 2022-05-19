package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;
import DAO.MyPageDAO;
import DTO.MemberDTO;





@WebServlet("*.member")
public class MemberController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		MyPageDAO mydao = new MyPageDAO();
		MemberDAO memdao=new MemberDAO();
		try {
		
//--------------------로그인-----------------------------
			if(uri.equals("/login.member")) {
			String id= request.getParameter("id");
			String pw= request.getParameter("pw");

			boolean result = memdao.login(id, pw);
		
			if(result) {
				HttpSession session = request.getSession();
				session.setAttribute("loginID",id);
			}
			response.sendRedirect("index.jsp");
//--------------------로그아웃-----------------------------
		}else if(uri.equals("/logout.member")) {
			request.getSession().invalidate();
			response.sendRedirect("index.jsp");
//--------------------마이페이지------------------------------------
		}else if(uri.equals("/mypage.member")) {
			String id = (String) (request.getSession().getAttribute("loginID"));
			List<MemberDTO> list = mydao.mypage(id);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/Member/myPage.jsp").forward(request, response);
				
//-------------------수정------------------------------------------
			}else if(uri.equals("/update.member")){
				request.setCharacterEncoding("utf-8");
				String id = (String) (request.getSession().getAttribute("loginID"));
				int phone =Integer.parseInt(request.getParameter("phone"));
				String email= request.getParameter("email");
				int zipcode=Integer.parseInt(request.getParameter("zipcode"));
				String address1= request.getParameter("address1");
				String address2= request.getParameter("address2");
				MemberDTO memdto = new MemberDTO();
				int result = mydao.update(memdto);

				response.sendRedirect("/Member/memberUpdate.jsp");
				
//--------------------회원탈퇴--------------------------------------				
			}else if(uri.equals("/memberout.member")) {
				String id= (String) (request.getSession().getAttribute("loginID"));
				int result = mydao.memberout(id);
				request.getSession().invalidate();
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
