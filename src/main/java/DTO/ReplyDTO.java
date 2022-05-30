package DTO;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class ReplyDTO {

	private int replySeq;
	private String writer;
	private String cotents;
	private Timestamp wirteDate;
	private int parentSeq;
	private int likeFunc;
	
	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReplyDTO(int replySeq, String writer, String cotents, Timestamp wirteDate, int parentSeq, int likeFunc) {
		super();
		this.replySeq = replySeq;
		this.writer = writer;
		this.cotents = cotents;
		this.wirteDate = wirteDate;
		this.parentSeq = parentSeq;
		this.likeFunc = likeFunc;
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

	public Timestamp getWirteDate() {
		return wirteDate;
	}

	public void setWirteDate(Timestamp wirteDate) {
		this.wirteDate = wirteDate;
	}

	public int getParentSeq() {
		return parentSeq;
	}

	public void setParentSeq(int parentSeq) {
		this.parentSeq = parentSeq;
	}

	public int getLikeFunc() {
		return likeFunc;
	}

	public void setLikeFunc(int likeFunc) {
		this.likeFunc = likeFunc;
	}
	
}

