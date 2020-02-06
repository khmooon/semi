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
    
	

	public Member() {
		
	}



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



	public int getEmpNo() {
		return empNo;
	}



	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}



	public String getEmpName() {
		return empName;
	}



	public void setEmpName(String empName) {
		this.empName = empName;
	}



	public String getEmpId() {
		return empId;
	}



	public void setEmpId(String empId) {
		this.empId = empId;
	}



	public String getEmpPwd() {
		return empPwd;
	}



	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}



	public String getEmpSsn() {
		return empSsn;
	}



	public void setEmpSsn(String empSsn) {
		this.empSsn = empSsn;
	}



	public String getDeptName() {
		return deptName;
	}



	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}



	public String getJobName() {
		return jobName;
	}



	public void setJobName(String jobName) {
		this.jobName = jobName;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getHome() {
		return home;
	}



	public void setHome(String home) {
		this.home = home;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getHireDate() {
		return hireDate;
	}



	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}



	public Date getEntDate() {
		return entDate;
	}



	public void setEntDate(Date entDate) {
		this.entDate = entDate;
	}



	public String getEntYN() {
		return entYN;
	}



	public void setEntYN(String entYN) {
		this.entYN = entYN;
	}

	
}
