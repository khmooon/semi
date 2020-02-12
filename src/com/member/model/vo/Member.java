package com.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{

	private int empNo;
	private String empName;
	private String empId;
	private String empPwd;
	private String empSsn;
	private String deptName;
	private String jobName;
	private String phone;
	private String home;
	private String address;
	private String email;
	private Date hireDate;
	private Date entDate;
	private String entYN;
	private String bank;
	private String bankNo;
	private int salary;
	private double bonus;
	



	/** 
	 * 로그인용
	 * @param empId
	 * @param empPwd
	 */
	public Member(String empId, String empPwd) {
		this.empId = empId;
		this.empPwd = empPwd;
		
	}
	/**
	 * 회원추가용
	 * @param empNo
	 * @param empName
	 * @param empId
	 * @param empPwd
	 * @param empSsn
	 * @param deptName
	 * @param jobName
	 * @param phone
	 * @param home
	 * @param address
	 * @param email
	 */
	public Member( String empName, String empId, String empPwd, String empSsn, String deptName,
			String jobName, String phone, String home, String address, String email) {
		this.empName = empName;
		this.empId = empId;
		this.empPwd = empPwd;
		this.empSsn = empSsn;
		this.deptName = deptName;
		this.jobName = jobName;
		this.phone = phone;
		this.home = home;
		this.address = address;
		this.email = email;
	}
	/**
	 * 불러오기용
	 * @param empNo
	 * @param empName
	 * @param empId
	 * @param empPwd
	 * @param empSsn
	 * @param deptName
	 * @param jobName
	 * @param phone
	 * @param home
	 * @param address
	 * @param email
	 * @param hireDate
	 * @param entDate
	 * @param entYN
	 */
	public Member(int empNo, String empName, String empId, String empPwd, String empSsn, String deptName,
			String jobName, String phone, String home, String address, String email, Date hireDate, Date entDate,
			String entYN) {
		this.empNo = empNo;
		this.empName = empName;
		this.empId = empId;
		this.empPwd = empPwd;
		this.empSsn = empSsn;
		this.deptName = deptName;
		this.jobName = jobName;
		this.phone = phone;
		this.home = home;
		this.address = address;
		this.email = email;
		this.hireDate = hireDate;
		this.entDate = entDate;
		this.entYN = entYN;
	}

	
	/**
	  * @Constructor Name : Member
	  * @작성일 : 2020. 2. 9.
	  * @작성자 : songinseok
	  * @변경이력 : 전자결재용 매개변수 생성자
	  * @param empNo
	  * @param empName
	  * @param deptName
	  * @param jobName
	  */
	public Member(int empNo, String empName, String deptName, String jobName) {
		super();
		this.empNo = empNo;
		this.empName = empName;
		this.deptName = deptName;
		this.jobName = jobName;
	}

	public String getBank() {
		return bank;
	}



	public void setBank(String bank) {
		this.bank = bank;
	}



	public String getBankNo() {
		return bankNo;
	}



	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}



	public int getSalary() {
		return salary;
	}



	public void setSalary(int salary) {
		this.salary = salary;
	}



	public double getBonus() {
		return bonus;
	}



	public void setBonus(double bonus) {
		this.bonus = bonus;
	}
}