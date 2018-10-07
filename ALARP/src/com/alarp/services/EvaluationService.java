package com.alarp.services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.alarp.db.DBManager;

import com.alarp.javabean.EvaluationBean;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
public class EvaluationService {
	static String url ="jdbc:mysql://localhost:3306/alarp";
	static String username ="root";
	static String password = "password";



public ArrayList getEval(int id) {
	ArrayList<EvaluationBean> eval = new ArrayList<>();
	String sql = "SELECT * FROM alarp.eval WHERE " + EvaluationBean.IDEVAL + "=" + id;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			EvaluationBean eb = new EvaluationBean();
			eb.setIdeval(id);
			eb.setDate_inspected(rs.getString(EvaluationBean.DATE_INSPECTED));
			eb.setDate_submitted(rs.getString(EvaluationBean.DATE_INSPECTED));
			eb.setQ1(rs.getString(EvaluationBean.Q1));
			eb.setQ2(rs.getString(EvaluationBean.Q2));
			eb.setQ3(rs.getString(EvaluationBean.Q3));
			eb.setQ4(rs.getString(EvaluationBean.Q4));
			eb.setQ5(rs.getString(EvaluationBean.Q5));
			eb.setQ6(rs.getString(EvaluationBean.Q6));
			eb.setSme_decision(rs.getString(EvaluationBean.SME_DECISION));
			eb.setType(rs.getString(EvaluationBean.TYPE));

			
			eval.add(eb);
		}		

	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return eval;
}



public ArrayList getAllEvaluations() {
	ArrayList<EvaluationBean> evalLists = new ArrayList<>();
	
	String sql1 = "select * from alarp.eval";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql1);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			EvaluationBean eb = new EvaluationBean();
			
			eb.setDate_inspected(rs.getString(EvaluationBean.DATE_INSPECTED));
			eb.setDate_submitted(rs.getString(EvaluationBean.DATE_SUBMITTED));
			eb.setType(rs.getString(EvaluationBean.TYPE));
			eb.setSme_decision(rs.getString(EvaluationBean.SME_DECISION));
			eb.setIdeval(rs.getInt(EvaluationBean.IDEVAL));
			
			evalLists.add(eb);
		}		

	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return evalLists;
}
	
public void decide(int id, String decision) {
	String sql = "UPDATE alarp.eval SET " 
			+ EvaluationBean.SME_DECISION + " = " + "? "
			+ "WHERE " + EvaluationBean.IDEVAL + " = " + "?";
	
	System.out.println("Hey this is the statement: " + sql); 

	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, decision);
		st.setInt(2, id);
		System.out.println(st);
		st.executeUpdate();
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public void addEvaluation(EvaluationBean e) {
	String sql = "INSERT INTO alarp." + EvaluationBean.TABLE_NAME + "("
			+ EvaluationBean.TYPE + ","
			+ EvaluationBean.DATE_INSPECTED + ","
			+ EvaluationBean.DATE_SUBMITTED + ","
			+ EvaluationBean.SME_DECISION + ","
			+ EvaluationBean.Q1 + ","
			+ EvaluationBean.Q2 + ","
			+ EvaluationBean.Q3 + ","
			+ EvaluationBean.Q4 + ","
			+ EvaluationBean.Q5 + ","
			+ EvaluationBean.Q6 + ")"
			+ "VALUES (?,?,?,?,?,?,?,?,?,?)";
	
	System.out.println("Hey this is the statement: " + sql); 
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, e.getType());
		st.setString(2, e.getDate_inspected());
		st.setString(3, e.getDate_submitted());
		st.setString(4, e.getSme_decision());
		st.setString(5, e.getQ1());
		st.setString(6, e.getQ2());
		st.setString(7, e.getQ3());
		st.setString(8, e.getQ4());
		st.setString(9, e.getQ5());
		st.setString(10, e.getQ6());
		st.executeUpdate();
	} catch (ClassNotFoundException | SQLException b) {
		// TODO Auto-generated catch block
		b.printStackTrace();
	}
}
}
