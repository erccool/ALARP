package com.alarp.javabean;

public class EvaluationBean {
	public static final String TABLE_NAME = "eval";
	public static final String IDEVAL = "ideval";
	public static final String TYPE = "type";
	public static final String Q1 = "q1";
	public static final String Q2 = "q2";
	public static final String Q3 = "q3";
	public static final String Q4 = "q4";
	public static final String Q5 = "q5";
	public static final String Q6 = "q6";
	public static final String DATE_SUBMITTED = "date_submitted";
	public static final String DATE_INSPECTED = "date_inspected";
	public static final String SME_DECISION = "sme_decision";
	
	
	private int ideval;
	

	public int getIdeval() {
		return ideval;
	}
	public void setIdeval(int ideval) {
		this.ideval = ideval;
	}
	private String sme_decision;
	public String getSme_decision() {
		return sme_decision;
	}
	public void setSme_decision(String sme_decision) {
		this.sme_decision = sme_decision;
	}
	private String type;
	private String date_inspected;
	private String date_submitted;
	private String q1;
	
	private String q2;
	private String q3;
	private String q4;
	private String q5;
	private String q6;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDate_inspected() {
		return date_inspected;
	}
	public void setDate_inspected(String date_inspected) {
		this.date_inspected = date_inspected;
	}
	public String getDate_submitted() {
		return date_submitted;
	}
	public void setDate_submitted(String date_submitted) {
		this.date_submitted = date_submitted;
	}
	
	public String getQ1() {
		return q1;
	}
	public void setQ1(String q1) {
		this.q1 = q1;
	}
	public String getQ2() {
		return q2;
	}
	public void setQ2(String q2) {
		this.q2 = q2;
	}
	public String getQ3() {
		return q3;
	}
	public void setQ3(String q3) {
		this.q3 = q3;
	}
	public String getQ4() {
		return q4;
	}
	public void setQ4(String q4) {
		this.q4 = q4;
	}
	public String getQ5() {
		return q5;
	}
	public void setQ5(String q5) {
		this.q5 = q5;
	}
	public String getQ6() {
		return q6;
	}
	public void setQ6(String q6) {
		this.q6 = q6;
	}

}
