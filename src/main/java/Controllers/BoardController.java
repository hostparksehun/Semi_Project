package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ReplyDAO;

@WebServlet("/BoardController")
public class BoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uri = request.getRequestURI();

		System.out.println(uri);

		ReplyDAO rdao = new ReplyDAO();

		try {
			// 댓글 추가
			if (uri.equals("/add.reply")) {

				request.setCharacterEncoding("utf-8");

				String writer = request.getParameter("writer");
				String content = request.getParameter("content");
				int parentSeq = Integer.parseInt(request.getParameter("parent_seq"));	

				int result = rdao.addReply(writer, content, parentSeq);

		// 확인 후 수정 필요 response.sendRedirect("/articleView.board?seq="+parentSeq);

			// 삭제	
			} else if (uri.equals("/del.reply")) {

				int pseq = Integer.parseInt(request.getParameter("pseq"));
				int seq = Integer.parseInt(request.getParameter("seq"));

				int result = rdao.delReply(seq, pseq);

				PrintWriter pw = response.getWriter();
				
				pw.append("1");

			// 수정	
			} else if (uri.equals("/modify.reply")) {

				request.setCharacterEncoding("utf-8");

				int pseq = Integer.parseInt(request.getParameter("pseq"));
				int seq = Integer.parseInt(request.getParameter("seq"));
				String content = request.getParameter("contents");

				int result = rdao.updateReply(pseq, seq, content);

		// 확인 후 수정 필요 response.sendRedirect("/articleView.board?seq="+pseq);
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
