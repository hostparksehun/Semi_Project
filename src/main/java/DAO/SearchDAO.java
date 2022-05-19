package DAO;import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


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
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc.orcl");
		
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
	
}
