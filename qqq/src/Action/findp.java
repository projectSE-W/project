package Action;

import Model.s;
import Model.project;
import Model.Role;
import java.sql.*;

import com.opensymphony.xwork2.Action;

public class findp implements Action{
	s s;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		project p[]=new project[100];
		Role r[]=new Role[300];
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection( "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from project");
		      ResultSet rs2 = stmt.executeQuery("select * from role");
		      int c=0;
		      int c2=0;
		      while (rs.next()) {
		    	  if (rs.getString("status")=="on")
		    	  {
		    		  p[c].setproject(rs.getString("cname"),rs.getString("pname"),rs.getString("pno"),rs.getString("content"),rs.getString("date"),rs.getString("dend"),rs.getString("status"));
		    	  }
		    	  c++;
		      }
		      while (rs2.next()) {
		    		  r[c2].setrole(rs.getString("pno"),rs.getString("pname"),rs.getString("rno"),rs.getString("rname"),Integer.parseInt(rs.getString("number")),rs.getString("langugage"),rs.getString("education"),rs.getString("city"),Integer.parseInt(rs.getString("numberleft")));
		    	  c2++;
		      }
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		
		
		
		return null;
	}
}