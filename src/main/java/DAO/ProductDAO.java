package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import DTO.ProductDTO;

public class ProductDAO {

private static ProductDAO instance = null;
	
	public synchronized static ProductDAO getlnstance() {
		
		if(instance == null) {
			instance = new ProductDAO();
		}
		return instance;
		
	}
	
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds =(DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
		
	public List<ProductDTO> selectAll() throws Exception{
		String sql = "select * form product_info";
		try(Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				) {
	    	
			List<ProductDTO> list = new ArrayList<>();
	    	 
            while(rs.next()) {
            	String product_name  = rs.getString("product_name");
            	String product_area  = rs.getString("product_area");
            	String producer_name  = rs.getString("producer_name");
            	int seq=rs.getInt("seq");
            	int file_index=rs.getInt("file_index");
            	String product_code  = rs.getString("product_code");
            	int kind=rs.getInt("kind");
            	int choose_count=rs.getInt("choose_count");
            	int price=rs.getInt("price");
            	int abv=rs.getInt("abv");
            	String dealer_number  = rs.getString("dealer_number");
            	String adress1  = rs.getString("adress1");
            	String adress2  = rs.getString("adress2");
            	int capacity=rs.getInt("capacity");
            	
            ProductDTO dto = new ProductDTO(product_name,product_area,producer_name,0,file_index,product_code, kind, choose_count,price,abv,dealer_number,adress1,adress2,capacity);
            
            
            list.add(dto);
            }
          return list;
		
		
		
		}
		
	}
}
