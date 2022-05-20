package DAO;import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import DTO.SearchDTO;


public class SearchDAO {
	
	private static SearchDAO instance = null;
	
	public static synchronized SearchDAO getInstance() {
		if(instance == null) {
			instance = new SearchDAO();
		}
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/orcl");
		
		return ds.getConnection();
	}
	
	// 텍스트 유효성 검사
	public String getWord(String search_text) {
		
		String word = "";
		
		if(!(search_text.equals(""))) {
			
			List<Character> checkList =  new ArrayList<Character>(); 
			
			for(int i=0; i<search_text.length(); i++) {
				
				checkList.add(search_text.charAt(i));
				
			}
			
			for(int i=0; i<checkList.size(); i++) {
				
				if(checkList.get(i) == ' ') {
					checkList.remove(i);
				}
				
			}
			
			
			for(int i=0; i<checkList.size(); i++) {
				word += checkList.get(i);
			}
			
		}
		return word;
	}
	
	
	// 일반 검색
	public List<SearchDTO> SearchByText(String product_name) throws Exception{
		
		String sql = "select product_name, product_code, seq, file_index from product_info where product_name like '%'||?||'%'";
		
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			
				pstat.setString(1, product_name);
			
			try(
					ResultSet rs = pstat.executeQuery();
					){
				
				List<SearchDTO> list = new ArrayList<SearchDTO>();
				
				while(rs.next()) {
					
					String pname = rs.getString("product_name");
					String pcode = rs.getString("product_code");
					int seq = rs.getInt("seq");
					int file_index = rs.getInt("file_index");
					
					SearchDTO dto = new SearchDTO(pname, seq, file_index, pcode);
					
					list.add(dto);
				}
				
				return list;
				
			}
		}
	}
	
	// 상세 검색 1
	
	
	
	// 상세 검색 2
	
	public List<SearchDTO> searchDetailHasPname(boolean[] searchType, String product_name, String[] alcholArr, String[] areaArr, int grade, float abv, String sql) throws Exception{
		
		boolean[] t = searchType;
		
		if (t[0] && t[1] && t[2] && t[3] && t[4]) {
			
			
			
			
			
		}
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
}
