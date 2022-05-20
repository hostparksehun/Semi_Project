package Controllers;

import java.io.IOException;
<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;
=======
>>>>>>> fe77951d772975006c69ae96dcf88adafaa6a6b2

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;
<<<<<<< HEAD
import DAO.MyPageDAO;
import DTO.MemberDTO;





=======
import DTO.MemberDTO;
import utils.EncryptUtils;


>>>>>>> fe77951d772975006c69ae96dcf88adafaa6a6b2
@WebServlet("*.member")
public class MemberController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		MyPageDAO mydao = new MyPageDAO();
		MemberDAO memdao=new MemberDAO();
		try {
		
<<<<<<< HEAD
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
				List<MemberDTO> list = new ArrayList<>();
				request.setAttribute("list", list);
				
				
				int phone =Integer.parseInt(request.getParameter("phone"));
				String email= request.getParameter("email");
				int zipcode=Integer.parseInt(request.getParameter("zipcode"));
				String address1= request.getParameter("address1");
				String address2= request.getParameter("address2");
				MemberDTO memdto = new MemberDTO();
				int result = mydao.update(memdto);

				request.getRequestDispatcher("/Member/memberUpdate.jsp").forward(request, response);
				
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

=======
		request.setCharacterEncoding("utf8");//post 한글깨짐 방지
		
		String uri = request.getRequestURI();
		MemberDAO dao = new MemberDAO();
		
		try {
			//회원가입 키를 눌러서 왔다. 온 애들 조인폼으로 보낸다
			if (uri.equals("/join.member")){
				response.sendRedirect("/joinform.jsp");
				
			//조인폼에서 폼액션 받고 loginView.jsp 이동
			} else if (uri.equals("/account.member")) {
				String id = request.getParameter("id");
				String pw = EncryptUtils.SHA256(request.getParameter("pw"));
				String name = request.getParameter("name");
				String birthday = request.getParameter("birthday");	
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				String zipcode = request.getParameter("zipcode");
				String address1 = request.getParameter("address1");
				String address2 = request.getParameter("address2");
				
				dao.insert(new MemberDTO(id, pw, name, birthday, phone, email, zipcode, address1, address2));
				response.sendRedirect("/index.jsp");
				
			//아이디 중복체크
			} else if (uri.equals("/duplCheck.member")){
				String id = request.getParameter("id");
				boolean result = dao.isIdExist(id); 
				
				response.getWriter().append(String.valueOf(result));
				
				
			//로그인폼에서 로그인버튼 눌러서 왔다.아이디랑 비번 일치 확인
			//로그인이 되면 메인화면. 안되면 비동기로 오류안내메세지...예정
			} else if (uri.equals("/login.member")) {
				String id = request.getParameter("id"); 
				String pw = request.getParameter("pw"); 
				try {
					boolean result = dao.login(id, pw); 
					System.out.println(result);
					if (result) {
						HttpSession session = request.getSession(); 
						session.setAttribute("id", id); 
					}
					response.sendRedirect("index.jsp");	
			
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			//로그아웃	
			} else if (uri.equals("/logout.member")) {
				request.getSession().invalidate();
				response.sendRedirect("/index.jsp");
				
				
			//아이디 찾기...예정
			} else if (uri.equals("/searchId.member")) {
		         String name = request.getParameter("name");
		         String phone = request.getParameter("phone");
		         MemberDTO dto = new MemberDTO(name, phone);
		         
		         String id = dao.searchId(dto);
		         
		         if(id != null) {//정보가 맞다면
		        	HttpSession session = request.getSession();
		            request.getSession().setAttribute("id", id);
		            response.sendRedirect("searchIdView.jsp");
		         } else {//정보가 맞지 않으면
		            response.sendRedirect("find_id.jsp?error");
		         }
				
			//비번 찾기...예정
			} else if (uri.equals("/searchPw.member")) {
				response.sendRedirect("/member/searchPwView.jsp");
			} else if(uri.equals("/")) {
			}
				
			
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
>>>>>>> fe77951d772975006c69ae96dcf88adafaa6a6b2
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
