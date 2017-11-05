package w;

public class time {
	public time(int y,int m,int d)	//constructor
	{
		year=y;
		month=m;
		day=d;
	}
	public time()
	{
		
	}
	public void settime(int y,int m,int d)	//update
	{
		year=y;
		month=m;
		day=d;
	}
	int year;
	int month;
	int day;
}
