package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDAO {

private static ProductDAO instance = null;
	
	public synchronized static ProductDAO getlnstance() {
		
		if(instance == null) {
			instance = new ProductDAO();
		}
		return instance;
		
	}
	
//	private Connection getConnection() throws Exception{
//		Context ctx = new InitialContext();
//		DataSource ds =(DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
//		return ds.getConnection();
//	}
	
	private Connection getConnection() throws Exception {
		
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","semi","semi");
		
	}
	
	public List<ProductDTO> selectAll() throws Exception{
		String sql = "select * form product_info"
	}
}
