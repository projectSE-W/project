package Action;

import Model.s;
import Service.BookService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;

import Model.project;

public class viewproject implements Action{
	@Override
	public String execute() throws Exception {
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
		      //Class.forName("org.gjt.mm.mysql.Driver");
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/test","root","198876");
		           //连接URL为   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码

		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from project");
		      ResultSet rs2; 
		      //rs contains all the projects
		while (rs.next()) {
		        System.out.println(rs.getString("pname")+" "+rs.getString("pno")+" "+rs.getString("cname"));
		        rs2 = stmt.executeQuery("select * from Role where pno='"+rs.getString("pno")+"' and ");
		      }
		    }
		    catch (Exception e) {
			      System.out.print("get data error!");
			      e.printStackTrace();
			  }
		return null;
	}
}
