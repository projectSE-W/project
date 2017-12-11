package Model;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
=======
<<<<<<< HEAD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
=======


>>>>>>> master
>>>>>>> wlztest

public class project {
	public project()
	{
		
	}
<<<<<<< HEAD:src/Model/project.java
<<<<<<< HEAD
	public project(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
	{
		cname=c;
=======
<<<<<<< HEAD
	public project(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
=======
	public project(String c,String n,String p,String con,String dat,String den ,String sta)	//update
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
	{
		cname=c;
=======
	public project(String n,String p,String con,int cou,Role r[])	//constructor
	{
>>>>>>> master
>>>>>>> wlztest
		pname=n;
		pno=p;
		content=con;
<<<<<<< HEAD:src/Model/project.java
		countrole=cou;
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> wlztest
=======
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
		//for (int i=0;i<50;i++)
		//{
		//	role[i]=r[i];
		//}
		date=dat;
		dend=den;
		status=sta;
		//date.settime(year,month,day);
<<<<<<< HEAD
	}
	public void setproject(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
=======
	}
<<<<<<< HEAD:src/Model/project.java
	public void setproject(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
=======
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
		status=1;
	}
	public void setproject(String c,String n,String p,String con,int cou,Role r[],int s,int year,int month,int day)	//update
>>>>>>> master
>>>>>>> wlztest
=======
	public void setproject(String c,String n,String p,String con,String dat,String den ,String sta)	//update
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
	{
		cname=c;
		pname=n;
		pno=p;
		content=con;
<<<<<<< HEAD:src/Model/project.java
		countrole=cou;
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> wlztest
=======
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
		//for (int i=0;i<50;i++)
		//{
		//	role[i]=r[i];
		//}
<<<<<<< HEAD:src/Model/project.java
<<<<<<< HEAD
=======
		status=s;
		//date.settime(year,month,day);
	}
	public void saveproject()
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
		      //String d,d2;
		      //d=date.year+"-"+date.month+"-"+date.day;
		      //d2=dend.year+"-"+dend.month+"-"+dend.day;
		      System.out.print("dates: "+date+ "  "+dend+"\n\n\n");
		      stmt.execute("insert into project values('"+cname+"','"+pname+"','"+
		      pno+"','"+content+"','"+date+"','"+dend+"','"+status +"')");
		      System.out.print("project saved!\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
	String cname;
	String pname;
	public String pno;  //project number 
	String content;	//a description of the content of the project
	String date;
	String dend;
	
	int countrole;
	//Role role[]=new Role[50];
	int status;//0 for off; 1 for on
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDend() {
		return dend;
	}
	public void setDend(String dend) {
		this.dend = dend;
	}
	public int getCountrole() {
		return countrole;
	}
	public void setCountrole(int countrole) {
		this.countrole = countrole;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
=======
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
>>>>>>> wlztest
		status=s;
=======
		date=dat;
		dend=den;
		status=sta;
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
		//date.settime(year,month,day);
	}
	public void saveproject()
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
		      //String d,d2;
		      //d=date.year+"-"+date.month+"-"+date.day;
		      //d2=dend.year+"-"+dend.month+"-"+dend.day;
		      System.out.print("dates: "+date+ "  "+dend+"\n\n\n");
		      stmt.execute("insert into project values('"+cname+"','"+pname+"','"+
		      pno+"','"+content+"','"+date+"','"+dend+"','"+status +"')");
		      System.out.print("project saved!\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
	String cname;
	String pname;
	public String pno;  //project number 
	String content;	//a description of the content of the project
	String date;
	String dend;
	
	int countrole;
	//Role role[]=new Role[50];
<<<<<<< HEAD:src/Model/project.java
	int status;//0 for off; 1 for on
<<<<<<< HEAD
=======
	String status;//0 for off; 1 for on
>>>>>>> 23cd6ee79ac83b2c1e34ba8869109a112984eeb6:qqq/src/Model/project.java
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDend() {
		return dend;
	}
	public void setDend(String dend) {
		this.dend = dend;
	}
	public int getCountrole() {
		return countrole;
	}
	public void setCountrole(int countrole) {
		this.countrole = countrole;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
=======
>>>>>>> master
>>>>>>> wlztest
}
