package Action;

import Model.s;
import Model.project;

import java.sql.*;
import Model.Role;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.Action;

public class recommendC implements Action{
	s s;
	//project p;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Role r[]=new Role[100];
		int points[]=new int[100];
		for (int i=0;i<100;i++)
		{
			points[i]=0;
		}
		int p=0;
		int counter=0;
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
		      ResultSet rs = stmt.executeQuery("select * from role where numberleft != 0");
		      while (rs.next()) {
		    	  p=0;
		          r[counter].setrole(rs.getString("pno"),rs.getString("pname"),rs.getString("rno"),rs.getString("rname"),Integer.parseInt(rs.getString("number")),rs.getString("langugage"),rs.getString("education"),rs.getString("city"),Integer.parseInt(rs.getString("numberleft")));
		          if (rs.getString("language")==s.getLanguage())
		          {
		        	  p++;
		          }
		          if (rs.getString("city")==s.getCity())
		          {
		        	  p++;
		          }
		          points[counter]=p;
		          counter++;
		      }  
		    }
		    catch (Exception e) {
			      System.out.print("get data error!");
			      e.printStackTrace();
			  }
		//counter is the number of the selected roles
		//p is the points of the current role
		//points record the points of all of the roles
		//r is the role set
		//s is the current S-user
		//sorting role now:
		for (int i=0;i<100;i++){
			for (int j=0;j<100;j++)
			{
				
			}
			
		}
		
		return null;
	}
}