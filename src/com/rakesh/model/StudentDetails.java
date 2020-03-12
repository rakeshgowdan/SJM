package com.rakesh.model;

import java.util.Date;

public class StudentDetails {
	
	private String sid;
	private String sname;
	private String regNo;
	private String course;
	private String status;
	private String courseJoined;
	private String courseStart;
	private String courseEnd;
	private String Attendencetotal;
	private String sem;
	private String Carriercourse;
	private String nonCarrierCourse;
	private String feeStatus;
	private String email;
	private int mobileNo;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getRegNo() {
		return regNo;
	}
	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCourseJoined() {
		return courseJoined;
	}
	public void setCourseJoined(String courseJoined) {
		this.courseJoined = courseJoined;
	}
	public String getCourseStart() {
		return courseStart;
	}
	public void setCourseStart(String courseStart) {
		this.courseStart = courseStart;
	}
	public String getCourseEnd() {
		return courseEnd;
	}
	public void setCourseEnd(String courseEnd) {
		this.courseEnd = courseEnd;
	}
	public String getAttendencetotal() {
		return Attendencetotal;
	}
	public void setAttendencetotal(String attendencetotal) {
		Attendencetotal = attendencetotal;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getCarriercourse() {
		return Carriercourse;
	}
	public void setCarriercourse(String carriercourse) {
		Carriercourse = carriercourse;
	}
	public String getNonCarrierCourse() {
		return nonCarrierCourse;
	}
	public void setNonCarrierCourse(String nonCarrierCourse) {
		this.nonCarrierCourse = nonCarrierCourse;
	}
	public String getFeeStatus() {
		return feeStatus;
	}
	public void setFeeStatus(String feeStatus) {
		this.feeStatus = feeStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(int mobileNo) {
		this.mobileNo = mobileNo;
	}
	public StudentDetails(String sid, String sname, String regNo, String course, String status, String courseJoined,
			String courseStart, String courseEnd, String attendencetotal, String sem, String carriercourse,
			String nonCarrierCourse, String feeStatus, String email, int mobileNo) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.regNo = regNo;
		this.course = course;
		this.status = status;
		this.courseJoined = courseJoined;
		this.courseStart = courseStart;
		this.courseEnd = courseEnd;
		Attendencetotal = attendencetotal;
		this.sem = sem;
		Carriercourse = carriercourse;
		this.nonCarrierCourse = nonCarrierCourse;
		this.feeStatus = feeStatus;
		this.email = email;
		this.mobileNo = mobileNo;
	}
	@Override
	public String toString() {
		return "StudentDetails [sid=" + sid + ", sname=" + sname + ", regNo=" + regNo + ", course=" + course
				+ ", status=" + status + ", courseJoined=" + courseJoined + ", courseStart=" + courseStart
				+ ", courseEnd=" + courseEnd + ", Attendencetotal=" + Attendencetotal + ", sem=" + sem
				+ ", Carriercourse=" + Carriercourse + ", nonCarrierCourse=" + nonCarrierCourse + ", feeStatus="
				+ feeStatus + ", email=" + email + ", mobileNo=" + mobileNo + "]";
	}
	public StudentDetails() {
		
	}
	

}
