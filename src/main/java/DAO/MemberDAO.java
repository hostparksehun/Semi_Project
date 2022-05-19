package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import DTO.MemberDTO;

public class MemberDAO {
private BasicDataSource ds = new BasicDataSource();
	
	private static MemberDAO  instance = null;
	
	public synchronized static MemberDAO  getInstance() {
		
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();

	}
	
	//-------------------------로그인-------------------------------
	public boolean login(String id,String pw) throws Exception {
		String sql = "select *from member where id=? and pw=?";
		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				) {
			pstat.setString(1, id);
			pstat.setString(2, pw);
			try(ResultSet rs = pstat.executeQuery();){
				return rs.next();
			}
		}

	}
}
