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
	static String url ="jdbc:mysql://aa1hgjsge0u107w.c4ffploofhfk.ap-southeast-1.rds.amazonaws.com:3306/alarp";
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
			con.close();
		}		

	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return eval;
}

public ArrayList getFullEval(int id) {
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
			eb.setQ7(rs.getString(EvaluationBean.Q7));
			eb.setQ8(rs.getString(EvaluationBean.Q8));
			eb.setQ9(rs.getString(EvaluationBean.Q9));
			eb.setQ10(rs.getString(EvaluationBean.Q10));
			eb.setQ11(rs.getString(EvaluationBean.Q11));
			eb.setQ12(rs.getString(EvaluationBean.Q12));
			eb.setQ13(rs.getString(EvaluationBean.Q13));
			eb.setQ14(rs.getString(EvaluationBean.Q14));
			eb.setQ15(rs.getString(EvaluationBean.Q15));
			eb.setQ16(rs.getString(EvaluationBean.Q16));
			eb.setQ17(rs.getString(EvaluationBean.Q17));
			eb.setQ18(rs.getString(EvaluationBean.Q18));
			eb.setQ19(rs.getString(EvaluationBean.Q19));
			eb.setQ20(rs.getString(EvaluationBean.Q20));
			eb.setQ21(rs.getString(EvaluationBean.Q21));
			eb.setQ22(rs.getString(EvaluationBean.Q22));

			eb.setSme_decision(rs.getString(EvaluationBean.SME_DECISION));
			eb.setType(rs.getString(EvaluationBean.TYPE));

			
			eval.add(eb);
			con.close();

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

public String getlastID() {
	String sql = "SELECT MAX(ideval) FROM alarp.eval";
	String results = null;
	int trys;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
					  
			trys = Integer.parseInt(rs.getString("MAX(ideval)"));
			
			
			
			results = Integer.toString(trys);
			
		
		} 
		con.close();
	}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return results;
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
		con.close();

	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public void deleteEval(int id) {
	ArrayList<EvaluationBean> product = new ArrayList<>();
	
	String sql = "DELETE FROM alarp.eval WHERE "  + EvaluationBean.IDEVAL + " = " + id;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.executeUpdate();	
		con.close();

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
		con.close();

	} catch (ClassNotFoundException | SQLException b) {
		// TODO Auto-generated catch block
		b.printStackTrace();
	}
}

public void addFullEvaluation (EvaluationBean e) {

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
			+ EvaluationBean.Q6 + ","
			+ EvaluationBean.Q7 + ","
			+ EvaluationBean.Q8 + ","
			+ EvaluationBean.Q9 + ","			
			+ EvaluationBean.Q10 + ","			
			+ EvaluationBean.Q11 + ","			
			+ EvaluationBean.Q12 + ","			
			+ EvaluationBean.Q13 + ","			
			+ EvaluationBean.Q14 + ","			
			+ EvaluationBean.Q15 + ","			
			+ EvaluationBean.Q16 + ","			
			+ EvaluationBean.Q17 + ","			
			+ EvaluationBean.Q18 + ","			
			+ EvaluationBean.Q19 + ","		
			+ EvaluationBean.Q20 + ","
			+ EvaluationBean.Q21 + ","
			+ EvaluationBean.Q22 + ","					
			+ EvaluationBean.Q23 + ")"
			+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
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
		st.setString(11, e.getQ7());
		st.setString(12, e.getQ8());
		st.setString(13, e.getQ9());
		st.setString(14, e.getQ10());
		st.setString(15, e.getQ11());
		st.setString(16, e.getQ12());
		st.setString(17, e.getQ13());
		st.setString(18, e.getQ14());
		st.setString(19, e.getQ15());
		st.setString(20, e.getQ16());
		st.setString(21, e.getQ17());
		st.setString(22, e.getQ18());
		st.setString(23, e.getQ19());
		st.setString(24, e.getQ20());
		st.setString(25, e.getQ21());
		st.setString(26, e.getQ22());
		st.setString(27, e.getQ23());
		st.executeUpdate();
		con.close();

	} catch (ClassNotFoundException | SQLException b) {
		// TODO Auto-generated catch block
		b.printStackTrace();
	}
}

}
