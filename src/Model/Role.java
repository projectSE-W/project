package Model;

class Role{
	public Role()  //constructor
	{
		
	}
	public void setrole(String p ,String r,String rn,int y,int m,int d,int n,String lan[],String edu,String c)  //update
	{
		pno=p;
		rno=r;
		rname=rn;
		worktime.settime(y, m, d);
		number=n;
		for (int i=0;i<50;i++)
		{
			language[i]=lan[i];
		}
		education=edu;
		city=c;
	}
	String pno;
	String rno;
	String rname;
	time worktime=new time();
	int number;
	String language[]=new String[50];
	String education; // B for banchelor; M for master; P for PHD
	String city; //city that work in
}