package Action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.Author;
import Model.Book;
import Service.BookService;


public class clogin implements Action {
	c c;
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request)  
    {  
        this.request = request;  
  
    }  
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		           //连接URL为   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码
		      
		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from c");
		      while (rs.next()) {
		          if (rs.getString("account")==c.account && rs.getString("password")==c.password)
		          {
		        	  HttpSession session=request.getSession(true);
		        	  session.setAttribute("c",c);  
		              return SUCCESS;
		          }
		      }
		      
		      
		      
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		c.signup();
		return null;
	}
}
