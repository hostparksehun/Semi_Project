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
import dto.BoardDTO;


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

	
	
	public ProductDTO selectBySeq(int pseq) throws Exception{	
		String sql = "select * from product_info where seq=?";

		try(Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);){
			pstat.setInt(1, pseq);

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
	
	
	
	
	// Page Navigator
		public String getPageNavi(int currentPage) throws Exception{
			int recordTotalCount = this.getRecordTotalCount();	// 총 게시글의 개수 -> 향후 실제 데이터베이스의 개수를 세어와야함
			
			int recordCountPerPage = 10;	// 한 페이지에 몇 개의 게시글을 보여줄 건지
			
			int naviCountPerPage = 10;		// 한 페이지에 몇 개의 네비를 보여 줄 건지
			
			int pageTotalCount = 0;			// 총 몇 개의 페이지가 필요한가?(우리가 정하는게 아니라 설정한 개수에 맞게 정해저야함)
			
			
			
			// 전체 페이지 수는 총 게시글에서 한 페이지에 보여지는 게시글의 개수를 나눈 값. 근데 나머지가 존재하면, +1 을 해줘야한다.
			if(recordTotalCount % recordCountPerPage > 0) {	// 전체 페이지 + 1 해야함(나머지가 존재할 때만)
				pageTotalCount = recordTotalCount / recordCountPerPage + 1;
			}else {
				pageTotalCount = recordTotalCount / recordCountPerPage;
			}
			
			
			
			// 현재 페이지가 비정상일 때 처리
			if(currentPage < 1) {
				currentPage = 1;
			}else if(currentPage > pageTotalCount) {
				currentPage = pageTotalCount;
			}
			
			
			
			// Page Navigator
			int startNavi = (currentPage-1) / naviCountPerPage * naviCountPerPage + 1;	// navi 시작의 공식 -> 현재 페이지의 십의 자리만 구해서 * naviPerPage +1 해주면 된다.
			int endNavi = startNavi + (naviCountPerPage - 1);
			
			if(endNavi > pageTotalCount) {	// 전체 페이지수 보다 endNavi 의 수가 클 수는 없다.
				endNavi = pageTotalCount;
			}
			
			boolean needNext = true;
			boolean needPrev = true;

			if(startNavi == 1) {
				needPrev = false;
			}
			if(endNavi == pageTotalCount) {
				needNext = false;
			}

			StringBuilder sb = new StringBuilder();

			if(needPrev) {
				sb.append("<a href='list.board?cpage="+(startNavi-1)+"'> < </a>");
			}

			for(int i = startNavi; i <= endNavi; i++) {
				if(currentPage == i) {
					sb.append("<a href=\'list.board?cpage="+i+"\'>[" + i + "] </a>");	// 페이지 당 10개씩 보이도록 해야하기 때문에 현재 페이지를 매개변수로 보냄으로써 페이지 네비를 클릭할 때 어디로 가야하는지 알아야한다.
				}else {
					sb.append("<a href=\'list.board?cpage="+i+"\'>" + i + " </a>");
				}
			}

			if(needNext) {
				sb.append("<a href='list.board?cpage="+(endNavi+1)+"'> > </a>");
			}

			return sb.toString();
		}
		
		// boradlist에서 보여지는 게시글 개수를 정하기 위한 메소드
		
		public List<ProductDTO> selectByPage(int cpage) throws Exception{

			// 게시글의 번호를 세팅한다.
			int start = cpage * 10 - 9;
			int end = cpage * 10;

			// 한 페이지에 게시글이 10개씩 보여지도록 하기 위해서 row_number를 활용하는데, 서브 쿼리를 활용해서 select 해준다.
			String sql = "select * from (select row_number() over(order by seq desc) line, product_info.* from\n product_info) where line between ? and ?";

			try(Connection con = this.getConnection();
					PreparedStatement pstat = con.prepareStatement(sql);){
				pstat.setInt(1, start);
				pstat.setInt(2, end);

				try(ResultSet rs = pstat.executeQuery();){
					List<ProductDTO> list = new ArrayList<ProductDTO>();

					while(rs.next()) {
						int seq = rs.getInt("seq");
						String title = rs.getString("title");
						String contents = rs.getString("contents");
						String writer = rs.getString("writer");
						Timestamp write_date = rs.getTimestamp("write_date");
						int view_count = rs.getInt("view_count");

						ProductDTO dto = new ProductDTO(seq, title, contents, writer, write_date, view_count);
						list.add(dto);
					}
					return list;
				}
			}
		
		}
}


