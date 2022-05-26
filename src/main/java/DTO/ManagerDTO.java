package DTO;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class ManagerDTO {
	private int board_num;
	private String title;
	private String writer;
	private Date writeDate;
	

	public ManagerDTO(int board_num, String title, String writer, Date writeDate) {
		super();
		this.board_num = board_num;
		this.title = title;
		this.writer = writer;
		this.writeDate = writeDate;
	}

	

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}


	public Date getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}


	/////////////////////시간 양식 변환 메서드////////////////////////////
	public String getFormedDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd");
		return sdf.format(this.writeDate.getTime());
	}

}
