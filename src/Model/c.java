package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class c {
	public c()
	{
		
	}
	public c(String a,String c,String cn,String ci,String li,String p,String e)  //constructor
	{
		account=a;
		password=c;
		cname=cn;
		city=ci;
		linkman=li;
		phone=p;
		email=e;
		for (int i=0;i<50;i++)
		{
			project_published[i]="";
		}
	}
	public void setc(String a,String c,String cn,String ci,String li,String p,String e)  //update
	{
		account=a;
		password=c;
		cname=cn;
		city=ci;
		linkman=li;
		phone=p;
		email=e;
		for (int i=0;i<50;i++)
		{
			project_published[i]="";
		}
	}
	String account;
	String password;
	String cname;
	String city;
	String linkman;
	String phone;
	String email;
	String project_published[]=new String[50];
	
	public void postproject()  //post a new project
	{
		
	}
	public void invite()		//invite programmer
	{
		
	}
	public void pick()		//pick a programmer
	{
		
	}
	public void signup()
	{
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
		     System.out.println("Loading Mysql Driver succeed!");
		    }
		    catch (Exception e) {
		      System.out.print("Loading Mysql Driver succeed!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		           //连接URL为   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码

		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      // System.out.print("excuting: insert into c values('"+account+"','"+password+"','"+
		      //cname+"','"+city+"','"+linkman+"','"+phone+"','"+email +"')\n");
		      stmt.execute("insert into c values('"+account+"','"+password+"','"+
		      cname+"','"+city+"','"+linkman+"','"+phone+"','"+email +"')");
		      System.out.print("signed up!\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
	public void update()
	{
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
		     System.out.println("Loading Mysql Driver succeed!");
		    }
		    catch (Exception e) {
		      System.out.print("Error in loading Mysql Driver!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		           //连接URL为   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码

		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      stmt.execute("delete from c where account="+account);
		      stmt.execute("insert into c values('"+account+"','"+password+"','"+
		      cname+"','"+city+"','"+linkman+"','"+phone+"','"+email +"')");
		      System.out.print("updated!\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
