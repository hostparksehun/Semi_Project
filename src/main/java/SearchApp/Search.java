package SearchApp;

public class Search {
	
	// 쿼리문 변수
	
	String defaultSql = "select product_name, product_code, seq, file_index from product_info where";
	
	String pname = "product_name like ?";
	
	String achType = "kind like ? or kind like ? or kind like ? kind like ? kind like ?;";

	String area = "product_area like '경기도' or product_area like ? or product_area like ? or product_area like ? or product_area like ? or product_area like ?";
//	String area = "product_area like '경기도' or product_area like '경상도' or product_area like '강원도' or product_area like '전라도' or product_area like '충청도' or product_area like '제주도'";
	
	String gradeStr = "grade >= ?";
	String abvStr = "abv >= ?";
	
	// 대치 쿼리문
	String[] sqlArr = new String[] {pname, achType, area, gradeStr, abvStr};
	
//	boolean[] searchType = new boolean[] {true, false, false, true, true};
	
	
	
	
	
	
	// 파싱 메서드
	
	
	
	
	
	// 쿼리문 반환 
	public String getSql(boolean[] searchType) {
		
		// 쿼리문 공장 돌리기
		for (int i=0; i<searchType.length; i++) {
			
			if(searchType[i]) {
				
				defaultSql += sqlArr[i];
				
				
				
				if(searchType[i+1]) {
					
					defaultSql += "and";
					
				}
			}
			
		}
		
		return defaultSql;
		
	}
	
	public static void main(String[] args) {
		
		
		boolean[] searchType = new boolean[] {true, false, false, true, true};
		
		Search sch = new Search();
		
		String result = sch.getSql(searchType);
		
		System.out.println(result);
		
	}
	
	

}
