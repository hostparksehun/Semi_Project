package DTO;

public class ProductDTO {
	   // 수정 -- 시작
	   private String product_name;
	   private String search_name;
	   private String product_area;
	   private int seq;
	   private String product_code;
	   private String kind;
	   private int choose_count;
	   private int price;
	   private float abv;
	   private String adress1;
	   private String adress2;
	   private String brewery;
	   private int capacity;
	   private float grade;
	   private String smry;
	   private String oriName;
	   private String sysName;
	   
	   public ProductDTO() {
	      super();
	   }
	   
	   public ProductDTO(String product_name, String search_name, String product_area, int seq, String product_code,
	         String kind, int choose_count, int price, float abv, String adress1, String adress2, String brewery,
	         int capacity, float grade, String smry, String oriName, String sysName) {
	      super();
	      this.product_name = product_name;
	      this.search_name = search_name;
	      this.product_area = product_area;
	      this.seq = seq;
	      this.product_code = product_code;
	      this.kind = kind;
	      this.choose_count = choose_count;
	      this.price = price;
	      this.abv = abv;
	      this.adress1 = adress1;
	      this.adress2 = adress2;
	      this.brewery = brewery;
	      this.capacity = capacity;
	      this.grade = grade;
	      this.smry = smry;
	      this.oriName = oriName;
	      this.sysName = sysName;
	   }

	   public String getProduct_name() {
	      return product_name;
	   }

	   public void setProduct_name(String product_name) {
	      this.product_name = product_name;
	   }

	   
	   public String getSearch_name() {
	      return search_name;
	   }

	   public void setSearch_name(String search_name) {
	      this.search_name = search_name;
	   }

	   
	   public String getProduct_area() {
	      return product_area;
	   }

	   public void setProduct_area(String product_area) {
	      this.product_area = product_area;
	   }

	   public int getSeq() {
	      return seq;
	   }

	   public void setSeq(int seq) {
	      this.seq = seq;
	   }

	   public String getProduct_code() {
	      return product_code;
	   }

	   public void setProduct_code(String product_code) {
	      this.product_code = product_code;
	   }

	   public String getKind() {
	      return kind;
	   }

	   public void setKind(String kind) {
	      this.kind = kind;
	   }

	   public int getChoose_count() {
	      return choose_count;
	   }

	   public void setChoose_count(int choose_count) {
	      this.choose_count = choose_count;
	   }

	   public int getPrice() {
	      return price;
	   }

	   public void setPrice(int price) {
	      this.price = price;
	   }

	   public float getAbv() {
	      return abv;
	   }

	   public void setAbv(float abv) {
	      this.abv = abv;
	   }
	   
	   public String getBrewery() {
	      return brewery;
	   }

	   public void setBrewery(String brewery) {
	      this.brewery = brewery;
	   }

	   public String getAdress1() {
	      return adress1;
	   }

	   public void setAdress1(String adress1) {
	      this.adress1 = adress1;
	   }

	   public String getAdress2() {
	      return adress2;
	   }

	   public void setAdress2(String adress2) {
	      this.adress2 = adress2;
	   }

	   public int getCapacity() {
	      return capacity;
	   }

	   public void setCapacity(int capacity) {
	      this.capacity = capacity;
	   }

	   public float getGrade() {
	      return grade;
	   }

	   public void setGrade(int grade) {
	      this.grade = grade;
	   }

	   public String getSmry() {
	      return smry;
	   }

	   public void setSmry(String smry) {
	      this.smry = smry;
	   }

	   public String getOriName() {
	      return oriName;
	   }

	   public void setOriName(String oriName) {
	      this.oriName = oriName;
	   }

	   public String getSysName() {
	      return sysName;
	   }

	   public void setSysName(String sysName) {
	      this.sysName = sysName;
	   }

	   // ----> 수정 끝
	   
	   
	   
	}