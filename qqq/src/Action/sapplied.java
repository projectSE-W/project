package Action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Model.s;
//import Model.c;
import Model.Author;
import Model.project;
import Model.c;
import Service.BookService;


public class sapplied extends ActionSupport implements ModelDriven<s>,  
ServletRequestAware  
{  
	s s;
	project p[];
	public ArrayList<project> pp;
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
		pp = new ArrayList();
		project tmp=new project();
		p=new project[100];
		for (int i=0;i<100;i++)
		{
			p[i]=new project();
		}
		
		 HttpSession httpSession =ServletActionContext.getRequest().getSession();
		 s = (s) httpSession.getAttribute("s");
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
		      System.out.print("now in sapply \n s.account="+s.getAccount());
		      ResultSet rs = stmt.executeQuery("select * from apply,project where account='"+s.getAccount()+"'");
		      //System.out.print(rs.getString("cname"));
		      int c=0;
		      while (rs.next()) {
		    	 tmp.setproject(rs.getString("cname"), rs.getString("project.pname"), rs.getString("project.pno"), rs.getString("content"), rs.getString("date"), rs.getString("dend"), rs.getString("status"));
		    	  p[c].setproject(rs.getString("cname"), rs.getString("project.pname"), rs.getString("project.pno"), rs.getString("content"), rs.getString("date"), rs.getString("dend"), rs.getString("status"));
		    	  pp.add(tmp);
		    	  c++;
		      }
		      //applied projects in p and pp
		      
		      
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
	public project[] getP() {
		return p;
	}
	public void setP(project[] p) {
		this.p = p;
	}
}