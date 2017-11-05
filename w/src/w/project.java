package w;

public class project {
	public project()
	{
		
	}
	public project(String n,String con,int cou,Role r[])	//constructor
	{
		pname=n;
		content=con;
		countrole=cou;
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
		status=1;
	}
	public void setproject(String n,String con,int cou,Role r[],int s)	//update
	{
		pname=n;
		content=con;
		countrole=cou;
		for (int i=0;i<50;i++)
		{
			role[i]=r[i];
		}
		status=s;
	}
	String pname;
	String content;	//a description of the content of the project
	int countrole;
	Role role[]=new Role[50];
	int status;//0 for off; 1 for on
}


