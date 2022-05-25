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

import DTO.ProductDTO;


public class ProductDAO {

private static ProductDAO instance = null;
	
	public synchronized static ProductDAO getInstance() {
		
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
	
	
	public int insert(ProductDTO dto) throws Exception{
		
		String sql = "insert into product_info values (product_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
       
	try(Connection con = this.getConnection();
			PreparedStatement pstat = con.prepareStatement(sql);) 
	{
	   

		pstat.setString(1, dto.getProduct_name());
		pstat.setString(2, dto.getSearch_name());
		pstat.setString(3, dto.getProduct_area());
		pstat.setString(4, dto.getBrewery());
		pstat.setString(5, dto.getProduct_code());
		pstat.setString(6, dto.getKind());
		pstat.setInt(7, dto.getChoose_count());
	    pstat.setInt(8, dto.getPrice());
	    pstat.setFloat(9, dto.getAbv());
	    pstat.setString(10, dto.getAdress1());
	    pstat.setString(11, dto.getAdress2());
	    pstat.setInt(12, dto.getCapacity());
	    pstat.setFloat(13, dto.getGrade());
	    pstat.setString(14, dto.getSmry());
	    pstat.setString(15, dto.getOriName());
	    pstat.setString(16, dto.getSysName());
		
	    int result = pstat.executeUpdate();
	    
	    con.commit();
	    
	    return result;
	    
	   }
							
	}

	
	public List<ProductDTO> selectAll() throws Exception{
		String sql = "select * from product_info";
		try(Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				) {
	    	
			List<ProductDTO> list = new ArrayList<>();
	    	 
            while(rs.next()) {
            	String product_name  = rs.getString("product_name");
            	String search_name  = rs.getString("search_name");
            	String product_area  = rs.getString("product_area");
            	int seq=rs.getInt("seq");
            	String product_code  = rs.getString("product_code");
            	String kind  = rs.getString("kind");
            	int choose_count = rs.getInt("choose_count");
            	int price=rs.getInt("price");
            	float abv=rs.getFloat("abv");
            	String adress1  = rs.getString("adress1");
            	String adress2  = rs.getString("adress2");
                String brewery  = rs.getString("brewery");
            	int capacity = rs.getInt("capacity");
            	float grade = rs.getFloat("grade");
            	String smry  = rs.getString("smry");
            	String oriName  = rs.getString("ori_name");
            	String sysName  = rs.getString("sys_name");
            	
            	
            	
                ProductDTO dto = new ProductDTO(product_name,search_name,product_area, seq, product_code, kind, choose_count, price, abv, adress1, adress2, brewery, capacity, grade, smry, oriName, sysName);
            
            
             list.add(dto);
             
            }
            return list;  
		}
		
	}

	
	
	public ProductDTO selectBySeq(int cseq) throws Exception{	
		String sql = "select * from product_info where seq=?";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, cseq);

			try(ResultSet rs = pstat.executeQuery();){
				rs.next();
				String product_name  = rs.getString("product_name");
            	String search_name  = rs.getString("search_name");
            	String product_area  = rs.getString("product_area");
            	int seq=rs.getInt("seq");
            	String product_code  = rs.getString("product_code");
            	String kind  = rs.getString("kind");
            	int choose_count = rs.getInt("choose_count");
            	int price=rs.getInt("price");
            	float abv=rs.getFloat("abv");
            	String adress1  = rs.getString("adress1");
            	String adress2  = rs.getString("adress2");
                String brewery  = rs.getString("brewery");
            	int capacity = rs.getInt("capacity");
            	float grade = rs.getFloat("grade");
            	String smry  = rs.getString("smry");
            	String oriName  = rs.getString("ori_name");
            	String sysName  = rs.getString("sys_name");

				ProductDTO dto = new ProductDTO(product_name,search_name,product_area, seq, product_code, kind, choose_count, price, abv, adress1, adress2, brewery, capacity, grade, smry, oriName, sysName);
				return dto;
			}
		}
	}
}


