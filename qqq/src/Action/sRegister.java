package Action;

import com.opensymphony.xwork2.Action;
import Model.s;
//import Model.c;

import Service.BookService;

public class sRegister implements Action {
	
	s s;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("action");
		s.signup();
		return SUCCESS;
	}
	//private Author author;




	public s getS() {
		return s;
	}

	public void setS(s s) {
		this.s = s;
	}
	
	//@Override
	//public String execute() throws Exception {
		
		//BookService bk= new BookService();
		//if (bk.addBook(book, author))
		//	return SUCCESS;
		//else 
		//	return ERROR;
	//}


	
}