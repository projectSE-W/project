package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class project {
	public project()
	{
		
	}
	public project(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
	{
		cname=c;
		pname=n;
		pno=p;
		content=con;
		countrole=cou;
		//for (int i=0;i<50;i++)
		//{
		//	role[i]=r[i];
		//}
		status=s;
		date.settime(year,month,day);
	}
	public void setproject(String c,String n,String p,String con,int cou,int s,int year,int month,int day)	//update
	{
		cname=c;
		pname=n;
		pno=p;
		content=con;
		countrole=cou;
		//for (int i=0;i<50;i++)
		//{
		//	role[i]=r[i];
		//}
		status=s;
		date.settime(year,month,day);
	}
	public void saveproject()
	{
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
		     System.out.println("Loading Mysql Driver succeed!");
		    }
		    catch (Exception e) {
		      System.out.print("Loading Mysql Driver succeed!");
		      e.printStackTrace();
		    }
		    try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/web","root","wjt19951122");
		           //����URLΪ   jdbc:mysql//��������ַ/���ݿ���  �������2�������ֱ��ǵ�½�û���������

		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      // System.out.print("excuting: insert into c values('"+account+"','"+password+"','"+
		      //cname+"','"+city+"','"+linkman+"','"+phone+"','"+email +"')\n");
		      String d;
		      d=date.year+"-"+date.month+"-"+date.day;
		      stmt.execute("insert into c values('"+cname+"','"+pname+"','"+
		      pno+"','"+content+"','"+d+"','"+countrole+"','"+status +"')");
		      System.out.print("project saved!\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
	String cname;
	String pname;
	String pno;  //project number 
	String content;	//a description of the content of the project
	time date;
	int countrole;
	//Role role[]=new Role[50];
	int status;//0 for off; 1 for on
}
