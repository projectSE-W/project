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
		      Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		           //����URLΪ   jdbc:mysql//��������ַ/���ݿ���  �������2�������ֱ��ǵ�½�û���������
		      
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