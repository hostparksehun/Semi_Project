package dto;

public class ListDTO {
	
	private String product_name;
	private String product_area;
	private String producer_name;
	private int seq; 
	private int file_index;
	private String product_code;
	private int kind;
	private int choose_count;
	private int price;
	private int abv;
	private String dealer_number;
	private String adress1;
	private String adress2;
	private int capacity;
	
	public ListDTO(String product_name, String product_area, String producer_name, int seq, int file_index,
			String product_code, int kind, int choose_count, int price, int abv, String dealer_number, String adress1,
			String adress2, int capacity) {
		super();
		this.product_name = product_name;
		this.product_area = product_area;
		this.producer_name = producer_name;
		this.seq = seq;
		this.file_index = file_index;
		this.product_code = product_code;
		this.kind = kind;
		this.choose_count = choose_count;
		this.price = price;
		this.abv = abv;
		this.dealer_number = dealer_number;
		this.adress1 = adress1;
		this.adress2 = adress2;
		this.capacity = capacity;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_area() {
		return product_area;
	}

	public void setProduct_area(String product_area) {
		this.product_area = product_area;
	}

	public String getProducer_name() {
		return producer_name;
	}

	public void setProducer_name(String producer_name) {
		this.producer_name = producer_name;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getFile_index() {
		return file_index;
	}

	public void setFile_index(int file_index) {
		this.file_index = file_index;
	}

	public String getProduct_code() {
		return product_code;
	}

	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}

	public int getKind() {
		return kind;
	}

	public void setKind(int kind) {
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

	public int getAbv() {
		return abv;
	}

	public void setAbv(int abv) {
		this.abv = abv;
	}

	public String getDealer_number() {
		return dealer_number;
	}

	public void setDealer_number(String dealer_number) {
		this.dealer_number = dealer_number;
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
	
}
