package DTO;

import java.sql.Date;

public class ReplyDTO {

	private int replySeq;
	private String writer;
	private String cotents;
	private Date wirteDate;
	private int parentSeq;
	
	public ReplyDTO() {
		super();
	}

	public ReplyDTO(int replySeq, String writer, String cotents, Date wirteDate, int parentSeq) {
		super();
		this.replySeq = replySeq;
		this.writer = writer;
		this.cotents = cotents;
		this.wirteDate = wirteDate;
		this.parentSeq = parentSeq;
	}

	public int getReplySeq() {
		return replySeq;
	}

	public void setReplySeq(int replySeq) {
		this.replySeq = replySeq;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCotents() {
		return cotents;
	}

	public void setCotents(String cotents) {
		this.cotents = cotents;
	}

	public Date getWirteDate() {
		return wirteDate;
	}

	public void setWirteDate(Date wirteDate) {
		this.wirteDate = wirteDate;
	}

	public int getParentSeq() {
		return parentSeq;
	}

	public void setParentSeq(int parentSeq) {
		this.parentSeq = parentSeq;
	}
	
	
}

