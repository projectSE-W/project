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

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import com.opensymphony.xwork2.*;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;

import java.io.PrintWriter;

import javax.servlet.http.*;    
import javax.servlet.http.HttpServletRequest;  
import org.apache.struts2.interceptor.*;  
import javax.servlet.http.*;  

public class clogin extends ActionSupport implements ModelDriven<c>,  
ServletRequestAware  
{  
	
	c c;
	public c getModel()  
    {  
        return c;  
    }  
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request)  
    {  
        this.request = request;  
  
    }  
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in clogin");
		System.out.println(c.getAccount());
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
		      System.out.print("123\n");
		      while (rs.next()) {
		    	  //System.out.print(rs.getString("account")+"  "+c.getAccount()+"  "+rs.getString("password")+"  "+c.getPassword());
		    	  
		          if (rs.getString("account").equals(c.getAccount()) && rs.getString("password").equals(c.getPassword()))
		          {
		        	  System.out.print("in if");
		        	  HttpSession session=request.getSession(true);
		        	  session.setAttribute("c",c);  
		        	  System.out.print("success loged in\n");
		        	  
		              return SUCCESS;
		          }
		      }
		      
		      
		      
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		//c.signup();
		return SUCCESS;
	}
	public c getC() {
		return c;
	}
	public void setC(c c) {
		this.c = c;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
}