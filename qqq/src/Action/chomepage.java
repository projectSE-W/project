package Action;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import com.opensymphony.xwork2.Action;
import Model.c;
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

public class chomepage implements Action {
	c company=new c();
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request)  
    {  
        this.request = request;  
    }  
	@Override
	public String execute() throws Exception
	{
		 HttpSession httpSession =ServletActionContext.getRequest().getSession();
		 company = (c) httpSession.getAttribute("c");
		 
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
			 ResultSet rs = stmt.executeQuery("select * from c where account="+company.account);
			 while (rs.next()) 
			 { 
			      System.out.print(rs.getString("account")+"\n"+rs.getString("password")+"\n");
			      company.setCity(rs.getString("city"));
			      company.setCname(rs.getString("cname"));
			      company.setLinkman(rs.getString("linkman"));
			      company.setPhone(rs.getString("phone"));
			      company.setEmail(rs.getString("email"));
			 }	
		 }
		 catch (Exception e) 
		{
			 System.out.print("get data error!");
			 e.printStackTrace();
		}
		 //informations in 'company'
		 
		 
		 //System.out.print(company.getAccount());
		return SUCCESS;
	}
	public c getCompany() {
		return company;
	}
	public void setCompany(c company) {
		this.company = company;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
}
