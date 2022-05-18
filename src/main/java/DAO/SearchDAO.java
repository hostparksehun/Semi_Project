package DAO;import java.sql.Connection;

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
	
	
}
