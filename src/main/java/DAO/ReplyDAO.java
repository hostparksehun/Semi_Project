package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import DTO.ReplyDTO;

public class ReplyDAO {

	private static ReplyDAO instance = null;

	public synchronized static ReplyDAO getInstance() {

		if (instance == null) {

			instance = new ReplyDAO();

		}
		return instance;
	}
	
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
		
	}
	
	// 댓글 등록 DAO
	public int addReply(String writer, String contents, int parentSeq) throws Exception{
		
		String sql = "insert into reply values(reply_seq.nextval, ?, ?, sysdate, ?, 0)";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, writer);
			pstat.setString(2, contents);
			pstat.setInt(3, parentSeq);
			
			int result = pstat.executeUpdate();
			con.commit();
			
			return result;
			
		}
	}
	
	// 댓글 출력 DAO
	public List<ReplyDTO> selectAllReply(int perentSeq) throws Exception {
		
		String sql = "select * from reply where parent_seq=?";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setInt(1, perentSeq);
			
			try(
					ResultSet rs = pstat.executeQuery();
					){
				List<ReplyDTO> list = new ArrayList<ReplyDTO>();
				
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String writer = rs.getString("writer");
					String contents = rs.getString("contents");
					Timestamp writeDate = rs.getTimestamp("write_date");
					int pSeq = rs.getInt("parent_seq");
					
					ReplyDTO dto = new ReplyDTO(seq, writer, contents, writeDate, pSeq,0);
					
					list.add(dto);
					
				}
				
				return list;
				
			}
		}
	}

	// 댓글 삭제 DAO
	public int delReply(int seq, int pseq) throws Exception {
		
		String sql = "delete from reply where seq = ? and parent_seq=?";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setInt(1, seq);
			pstat.setInt(2, pseq);
			
			int result = pstat.executeUpdate();
			con.commit();
			
			return result;
		}
	}

	// 댓글 수정하기 DAO
	public int updateReply(int pseq, int seq, String contents) throws Exception {
		
		String sql = "update reply set contents=?, write_date=sysdate where parent_seq=? and seq=?";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, contents);
			pstat.setInt(2, pseq);
			pstat.setInt(3, seq);
			
			int result = pstat.executeUpdate();
			con.commit();
			
			return result;
		}
	}

	public List<ReplyDTO> selectReply(int num) throws Exception{
		String sql = "select * from reply where PARENT_SEQ = ?";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, num);

			try(ResultSet rs = pstat.executeQuery();){
				List<ReplyDTO> list = new ArrayList<ReplyDTO>();
				
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String writer = rs.getString("WRITER");
					String contents = rs.getString("CONTENTS");
					Timestamp write_date = rs.getTimestamp("WRITE_DATE");
					int parentSeq = rs.getInt("PARENT_SEQ");
					int likeFunc = rs.getInt("LIKE_FUNC");
	
					ReplyDTO dto = new ReplyDTO(seq, writer, contents, write_date, parentSeq,likeFunc);
					list.add(dto);
				}
				return list;
			}
		}
	}

	public List<ReplyDTO> SearchAll(int num) throws Exception{

		String sql = "select * from reply where PARENT_SEQ = ?";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, num);

			try(ResultSet rs = pstat.executeQuery();){
				List<ReplyDTO> list = new ArrayList<ReplyDTO>();
				
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String writer = rs.getString("WRITER");
					String contents = rs.getString("CONTENTS");
					Timestamp write_date = rs.getTimestamp("WRITE_DATE");
					int parentSeq = rs.getInt("PARENT_SEQ");
					int likeFunc = rs.getInt("LIKE_FUNC");
	
					ReplyDTO dto = new ReplyDTO(seq, writer, contents, write_date, parentSeq,likeFunc);
					list.add(dto);
				}
				return list;
			}
		}
	}
}































