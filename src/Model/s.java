package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class s {
	public s()		//constructor
	{
		
	}
	public s(String acc, String c, String n,String a,String g,String sch,String ga,String ma,String ci,String ph,String em,
			String lan)    //update  update  update
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
		language=lan;
		phone=ph;
		email=em;
		
		/*for (int i=0;i<50;i++)
		{
			project_apply[i]="";
			project_in[i]="";
			project_done[i]="";
			project_invited[i]="";
		}*/
		
	}
	public void sets(String acc, String c, String n,String a,String g,String sch,String ga,String ma,String ci,String ph,String em,String lan)    //update  update  update
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
		language=lan;
		phone=ph;
		email=em;
		
		/*for (int i=0;i<50;i++)
		{
			project_apply[i]="";
			project_in[i]="";
			project_done[i]="";
			project_invited[i]="";
		}*/
	}
	public String account;
	String password;
	String name;
	String age;
	String gender;
	String school;
	String grade;
	String major;
	String city; 
	String phone;
	String email;
	
	String language;
	//int countapply;
	//String project_apply;
	//int countin;
	//String project_in;
	//int countd;
	//String project_done;
	//int counti;
	//String project_invited;
	

	public void confirm()
	{
		
	}
	public void signup()
	{
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
		      String a=age+"";
		      String b=grade+"";
		      //String c=countlanguage+"";
		      //System.out.print(a+b+c);
		      stmt.execute("insert into s values('"+account+"','"+password+"','"+
		      name+"','"+a+"','"+gender+"','"+school+"','"+b+"','"+major+"','"
		    	  +city+"','"+phone+"','"+email +"')");
		      
		      stmt.execute("insert into sl values('"+account+"','"+language+"')");
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
		      String a=age+"";
		      String b=grade+"";
		     // String c=countlanguage+"";
		      //System.out.print(a+b+c);
		      stmt.execute("delete from s where account="+account);	      
		      stmt.execute("delete from sl where account = "+account);
		      stmt.execute("insert into s values('"+account+"','"+password+"','"+
		      name+"','"+a+"','"+gender+"','"+school+"','"+b+"','"+major+"','"
		    	  +city+"','"+phone+"','"+email +"')");
		      //for (int i=0;i<countlanguage;i++)
		      //{
		    	//  stmt.execute("insert into sl values('"+account+"','"+language+"')");
		     // }
		      stmt.execute("insert into sl values('"+account+"','"+language+"')");
		      System.out.print("updated\n");
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
}

