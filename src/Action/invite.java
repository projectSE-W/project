package Action;

import Model.s;
import Model.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;

public class invite implements Action{
	s s;
	project p;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //¼ÓÔØMYSQL JDBCÇý¶¯³ÌÐò   
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      stmt.execute("insert into invite values('"+s.account+"','"+p.pno +"')");
		      }
		    catch (Exception e) {
			      System.out.print("get data error!");
			      e.printStackTrace();
			  }
		
		
		//c.signup();
		return null;
}
