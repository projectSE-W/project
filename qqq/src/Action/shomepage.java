package Action;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import com.opensymphony.xwork2.Action;
import Model.s;
//import Model.c;
import Model.Author;
import Model.Book;
import Service.BookService;
import java.util.*;
import com.opensymphony.xwork2.*;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;
import java.io.PrintWriter;
import javax.servlet.http.*;     

public class shomepage implements Action {
	s user=new s();
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request)  
    {  
        this.request = request;  
    }  
	@Override
	public String execute() throws Exception
	{
		 HttpSession httpSession =ServletActionContext.getRequest().getSession();
		 user = (s) httpSession.getAttribute("s");
		 
		 try 
		 {
			 Class.forName("com.mysql.jdbc.Driver");     //¼ÓÔØMYSQL JDBCÇý¶¯³ÌÐò   
			 System.out.println("Success loading Mysql Driver!");
		 }
		catch (Exception e) 
		 {
			System.out.print("Error loading Mysql Driver!");
			e.printStackTrace();
		}
		 try 
		 {
			 Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","wjt19951122");
			 System.out.println("Success connect Mysql server!");
			 Statement stmt = connect.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from s where account="+user.account);
			 while (rs.next()) 
			 { 
			      System.out.print(rs.getString("account")+"\n"+rs.getString("password")+"\n");
			      user.setName(rs.getString("name"));
			      user.setAge(rs.getString("age"));
			      user.setGender(rs.getString("gender"));
			      user.setSchool(rs.getString("school"));
			      user.setGrade(rs.getString("grade"));
			      user.setMajor(rs.getString("major"));
			      user.setCity(rs.getString("city"));
			      user.setPhone(rs.getString("phone"));
			      user.setEmail(rs.getString("email"));
			      user.setLanguage(rs.getString("language"));
			 }	
		 }
		 catch (Exception e) 
		{
			 System.out.print("get data error!");
			 e.printStackTrace();
		}
		 //informations in 'company'
		 
		 
		 System.out.print(user.getAccount());
		return SUCCESS;
	}
	
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public s getUser() {
		return user;
	}
	public void setUser(s user) {
		this.user = user;
	}
}