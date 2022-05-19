package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import DTO.MemberDTO;




public class MyPageDAO {
	private BasicDataSource ds = new BasicDataSource();

	private static MyPageDAO instance = null;

	public synchronized static MyPageDAO  getInstance() {

		if(instance == null) {
			instance = new MyPageDAO();
		}
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();

	}
	//------------------------내 정보 출력-------------------------------
	public List<MemberDTO> mypage(String id)throws Exception{
		String sql = "select id,name,birthday,phone,email,zipcode,address1,address2 from member where id=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, id);
			try(ResultSet rs = pstat.executeQuery();){
				List<MemberDTO> list = new ArrayList<>();
				while(rs.next()) {
					MemberDTO dto = new MemberDTO();

					dto.setId(rs.getString("id"));
					dto.setName(rs.getString("name"));
					dto.setBirthday(rs.getInt("birthday"));
					dto.setPhone(rs.getInt("phone"));
					dto.setEmail(rs.getString("email"));
					dto.setZipcode(rs.getInt("zipcode"));
					dto.setAddress1(rs.getString("address1"));
					dto.setAddress2(rs.getString("address2"));


					list.add(dto);
				}
				return list;

			}

		}

	}
	//-------------------회원탈퇴-----------------------------------------
	public int memberout(String id)throws Exception {
		String sql = "delete from member where id=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql)) {
			pstat.setString(1, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	//-------------------회원정보 수정-----------------------------------
	public int update(MemberDTO dto) throws Exception {
		String sql = "update member set phone=?,email=?,zipcode=?,address1=?,address2=? where id=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setInt(1,dto.getPhone());
			pstat.setString(2, dto.getEmail());
			pstat.setInt(3,dto.getZipcode());
			pstat.setString(4,dto.getAddress1());
			pstat.setString(5,dto.getAddress2());
			pstat.setString(6,dto.getId());
			int result=pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	//---------------게시글 모아보기---------------------------------
}
