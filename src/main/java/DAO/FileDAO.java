package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DTO.FileDTO;

public class FileDAO {
	private static FileDAO instance = null;
	public FileDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public static synchronized FileDAO getInstance() {
		if(instance == null) {
			instance = new FileDAO();
		}
		return instance;
	}


	private Connection getConnection() throws Exception{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "semi";
		String pw = "semi";
		return DriverManager.getConnection(url, id, pw);
	}
	
	public int insert(FileDTO dto) throws Exception{
		String sql = "insert into file_data values(file_seq.nextval, ?,?,sysdate)";
		try(Connection con = this.getConnection();
			PreparedStatement pstat = con.prepareStatement(sql)){
			pstat.setString(1, dto.getOriName());
			pstat.setString(2, dto.getSysName());
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	public List<FileDTO> selectAll() throws Exception{
		String sql = "select * from files";
		
		try(Connection con = this.getConnection();
			PreparedStatement pstat = con.prepareStatement(sql);
			ResultSet rs = pstat.executeQuery();){
			List<FileDTO> list = new ArrayList<>();
			while(rs.next()) {
				FileDTO dto = new FileDTO();
				dto.setSeq(rs.getInt("seq"));
				dto.setOriName(rs.getString("ori_name"));
				dto.setSysName(rs.getString("sys_name"));
				dto.setParent_seq(rs.getInt("parent_seq"));
				
				list.add(dto);
			}
			return list;
		}
	}
}
