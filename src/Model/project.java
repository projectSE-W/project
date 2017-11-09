package Model;




public class project {
	public project()
	{
		
	}
	public project(String n,String p,String con,int cou,Role r[])	//constructor
	{
		pname=n;
		pno=p;
		content=con;
		countrole=cou;
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
		status=1;
	}
	public void setproject(String c,String n,String p,String con,int cou,Role r[],int s,int year,int month,int day)	//update
	{
		cname=c;
		pname=n;
		pno=p;
		content=con;
		countrole=cou;
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
		status=s;
		date.settime(year,month,day);
	}
	String cname;
	String pname;
	String pno;  //project number 
	String content;	//a description of the content of the project
	time date;
	int countrole;
	Role role[]=new Role[50];
	int status;//0 for off; 1 for on
}
