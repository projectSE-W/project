package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class s {
	public s()		//constructor
	{
		
	}
	public void sets(String acc, String c, String n,int a,String g,String sch,int ga,String ma,String ci,String ph,String em,
			int cou,String lan[])    //update  update  update
	{
		account=acc;
		password=c;
		name=n;
		age=a;
		gender=g;
		school=sch;
		major=ma;
		grade=ga;
		city=ci;
		for (int i=0;i<50;i++)
		{
			language[i]=lan[i];
		}
		phone=ph;
		email=em;
		countlanguage=cou;
		
	}
	String account;
	String password;
	String name;
	int age;
	String gender;
	String school;
	int grade;
	String major;
	String city; 
	String phone;
	String email;
	int countlanguage;
	String language[] = new String[50]; //coding language
	public void apply()
	{
		
	}
	public void confirm()
	{
		
	}
	public void signup()
	{
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
		      String a=age+"";
		      String b=grade+"";
		      String c=countlanguage+"";
		      //System.out.print(a+b+c);
		      stmt.execute("insert into s values('"+account+"','"+password+"','"+
		      name+"','"+a+"','"+gender+"','"+school+"','"+b+"','"+major+"','"
		    	  +city+"','"+phone+"','"+email +"','"+c+"')");
		      for (int i=0;i<countlanguage;i++)
		      {
		    	  stmt.execute("insert into sl values('"+account+"','"+language[i]+"')");
		      }
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
		      String a=age+"";
		      String b=grade+"";
		      String c=countlanguage+"";
		      //System.out.print(a+b+c);
		      stmt.execute("delete from s where account="+account);	      
		      stmt.execute("delete from sl where account = "+account);
		      stmt.execute("insert into s values('"+account+"','"+password+"','"+
		      name+"','"+a+"','"+gender+"','"+school+"','"+b+"','"+major+"','"
		    	  +city+"','"+phone+"','"+email +"','"+c+"')");
		      for (int i=0;i<countlanguage;i++)
		      {
		    	  stmt.execute("insert into sl values('"+account+"','"+language[i]+"')");
		      }
		      System.out.print("updated\n");
		    }	
		    catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
	}
}
