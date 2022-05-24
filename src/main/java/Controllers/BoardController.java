package Controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.BoardDAO;
import DTO.BoardDTO;
import DTO.FileDTO;
import DTO.ReplyDTO;
import DAO.FileDAO;
import DAO.ReplyDAO;

@WebServlet("*.board")
public class BoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		BoardDAO dao = new BoardDAO();
		FileDAO fdao = new FileDAO();
		ReplyDAO rdao = new ReplyDAO();
		try {
			if(uri.equals("/boardList.board")) {
				int cpage = 1;
				int type = 0;
				// 게시판 리스트 가져오기
				if(request.getParameter("cpage") != null) {
					cpage = Integer.parseInt(request.getParameter("cpage"));
				}
				
				// 게시판 정렬 타입 가져오기 
				if(request.getParameter("type") != null) {
					type = Integer.parseInt(request.getParameter("type"));
				}
				
				HttpSession session = request.getSession();
				session.setAttribute("cpage", cpage);
				String typeSql = "";
				switch(type) {
					case 0 : typeSql = ""; break;
					case 1 : typeSql = " ORDER BY VIEW_COUNT DESC"; break;
					case 2 : typeSql = " ORDER BY WRITE_DATE DESC"; break;
					case 3 : typeSql = " ORDER BY BOARD_LIKE DESC"; break;
					default : typeSql = "";break;
				}
				List<BoardDTO> list = dao.selectByPage(cpage,typeSql);	// 한 페이지에 보여지는 게시글의 개수를 정하기 위해 새로운 메소드가 필요함.
				//List<BoardDTO> list = dao.selectAll();
				String pageNavi = dao.getPageNavi(cpage,type);
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				request.getRequestDispatcher("/Board/boardList.jsp").forward(request, response);
				
			}else if(uri.equals("/boardAdd.board")) {
				String writer = (String)request.getSession().getAttribute("loginID");
				
				String path = request.getServletContext().getRealPath("files");
				File filePath = new File(path);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*10,"UTF8",new DefaultFileRenamePolicy());
				
				String title = multi.getParameter("title");
				String contents = multi.getParameter("boardExp");
				
				String oriName = multi.getOriginalFileName("file");
				String sysName = multi.getFilesystemName("file");
				int seq = dao.getSeqNextVal();
				int result = dao.insert(new BoardDTO(seq, writer, title, contents, 0, 0, null, 0));
				if(oriName != null) {
					fdao.insert(new FileDTO(0, oriName,sysName,seq));
				}
				request.getRequestDispatcher("/boardList.board?cpage=1").forward(request, response);		
			}else if(uri.equals("/boardSelect.board")){
				int num = Integer.parseInt(request.getParameter("num"));
				int result = dao.boardUpdateCount(num);
				BoardDTO board = dao.selectBoard(num);
				List<ReplyDTO> reply = rdao.selectReply(num);
				request.setAttribute("board", board);
				request.setAttribute("reply", reply);
				request.getRequestDispatcher("/Board/reply.jsp").forward(request, response);
			}else if(uri.equals("/boardLike.board")) {
				int num = Integer.parseInt(request.getParameter("num"));
				int result = dao.boardLike(num);
				request.getRequestDispatcher("/boardSelect.board?num="+num).forward(request, response);
			}else if(uri.equals("/boardSet.board")) {
				int num = Integer.parseInt(request.getParameter("num"));
				int stat = Integer.parseInt(request.getParameter("stat"));
				int result = dao.boardDelete(num,stat);
				request.getRequestDispatcher("/boardSelect.board?num="+num).forward(request, response);
			}else if(uri.equals("/boardUpdate.board")) {
				int num = Integer.parseInt(request.getParameter("num"));
				BoardDTO board = dao.selectBoard(num);
				request.setAttribute("board", board);
				request.getRequestDispatcher("/Board/boardUpdate.jsp").forward(request, response);
			}else if(uri.equals("/boardUpdateAction.board")) {
				String writer = (String)request.getSession().getAttribute("loginID");
				
				String path = request.getServletContext().getRealPath("files");
				File filePath = new File(path);
				if(!filePath.exists()) {
					filePath.mkdir();
				}
				MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*10,"UTF8",new DefaultFileRenamePolicy());
				
				int num = Integer.parseInt(multi.getParameter("num"));
				String title = multi.getParameter("title");
				String contents = multi.getParameter("boardExp");
				
				String oriName = multi.getOriginalFileName("file");
				String sysName = multi.getFilesystemName("file");
				int seq = num;
				int result = dao.update(new BoardDTO(seq, writer, title, contents, 0, 0, null, 0));
				/*if(oriName != null) {
					fdao.insert(new FileDTO(0, oriName,sysName,seq));
				}*/
				request.getRequestDispatcher("/boardSelect.board?num="+num).forward(request, response);
			}
			
			// 댓글 추가
			else if (uri.equals("/add.board")) {

				request.setCharacterEncoding("utf-8");

				String writer = request.getParameter("writer");
				String content = request.getParameter("content");
				int parentSeq = 1;
				if(request.getParameter("parent_seq") != null && request.getParameter("parent_seq") != "") {
					parentSeq = Integer.parseInt(request.getParameter("parent_seq"));	
				}
				
				int result = rdao.addReply(writer, content, parentSeq);
				request.getRequestDispatcher("/boardSelect.board?num="+parentSeq).forward(request, response);
		// 확인 후 수정 필요 response.sendRedirect("/articleView.board?seq="+parentSeq);

			// 삭제	
			} else if (uri.equals("/del.board")) {

				int pseq = Integer.parseInt(request.getParameter("pseq"));
				int seq = Integer.parseInt(request.getParameter("seq"));

				int result = rdao.delReply(seq, pseq);

				PrintWriter pw = response.getWriter();
				
				pw.append("1");
				request.getRequestDispatcher("/boardSelect.board?num="+seq).forward(request, response);
			// 수정	
			} else if (uri.equals("/modify.board")) {

				request.setCharacterEncoding("utf-8");

				int pseq = Integer.parseInt(request.getParameter("pseq"));
				int seq = Integer.parseInt(request.getParameter("seq"));
				String content = request.getParameter("contents");

				int result = rdao.updateReply(pseq, seq, content);
				request.getRequestDispatcher("/boardSelect.board?num="+seq).forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}