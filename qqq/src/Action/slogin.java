package Action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Model.s;
//import Model.c;
import Model.Author;
import Model.Book;
import Model.c;
import Service.BookService;


public class slogin extends ActionSupport implements ModelDriven<s>,  
ServletRequestAware  
{  
	s s;
	public s getModel()  
    {  
        return s;  
    }  
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
		      ResultSet rs = stmt.executeQuery("select * from s");
		      while (rs.next()) {
		    	  //System.out.println(rs.getString("account")+"   "+rs.getString("password"));
		    	  System.out.print("account: "+s.getAccount()+"password: "+s.getPassword());
		    	  if (rs.getString("account").equals(s.getAccount()) && rs.getString("password").equals(s.getPassword()))
		          {
		    		  System.out.print(s.account+"\n\n\n");
		        	  HttpSession session=request.getSession(true);
		        	  session.setAttribute("s",s);  
		        	  System.out.print("s log in\n");
		              return SUCCESS;
		          }
		      }
		      
		      
		      
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		
		return SUCCESS;
	}
	public s getS() {
		return s;
	}
	public void setS(s s) {
		this.s = s;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
}
