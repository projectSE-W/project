package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Role{
	public Role()  //constructor
	{
		
	}
	public void setrole(String p ,String r,String rn,int y,int m,int d,int n,String lan,String edu,String c)  //update
	{
		pno=p;
		rno=r;
		rname=rn;
		worktime.settime(y, m, d);
		number=n;
		//for (int i=0;i<50;i++)
		//{
			language=lan;
		//}
		education=edu;
		city=c;
	}
	public void saverole()
	{
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
			      String d;
			
			      d=worktime.year+"-"+worktime.month+"-"+worktime.day;
			      stmt.execute("insert into role values('"+pno+"','"+rno+"','"+
			      rname+"','"+d+"','"+number+"','"+language+"','"+education +"','"+city+"')");
			      System.out.print("project saved!\n");
			    }	
			    catch (Exception e) {
			      System.out.print("get data error!");
			      e.printStackTrace();
			    }
		}
	}
	String pno;
	String rno;
	String rname;
	time worktime=new time();
	int number;
	String language;//=new String[50];
	String education; // B for banchelor; M for master; P for PHD
	String city; //city that work in
}