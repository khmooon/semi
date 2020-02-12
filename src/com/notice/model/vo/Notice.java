package com.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8615496645170600376L;
	
	private int nno;
	private String ntitle;
	private String ncontent;
	private String nwriter;
	private int nCount;
	private Date ndate;
	
	public Notice() {}

	/**
	 * 글 작성시
	 * @param ntitle
	 * @param ncontent
	 * @param nwriter
	 */
	public Notice(String ntitle, String ncontent, String nwriter) {
		super();
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nwriter = nwriter;
	}

	/**
	 * 목록 불러올 때
	 * @param nno
	 * @param ntitle
	 * @param ncontent
	 * @param nwriter
	 * @param nCount
	 * @param ndate
	 */
	public Notice(int nno, String ntitle, String ncontent, String nwriter, int nCount, Date ndate) {
		super();
		this.nno = nno;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nwriter = nwriter;
		this.nCount = nCount;
		this.ndate = ndate;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	@Override
	public String toString() {
		return "Notice [nno=" + nno + ", ntitle=" + ntitle + ", ncontent=" + ncontent + ", nwriter=" + nwriter
				+ ", nCount=" + nCount + ", ndate=" + ndate + "]";
	}
	
}


