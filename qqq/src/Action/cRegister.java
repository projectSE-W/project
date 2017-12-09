package Action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.Author;
import Model.Book;
import Service.BookService;

public class cRegister implements Action {
	
	c c;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		c.signup();
		HttpSession httpSession =ServletActionContext.getRequest().getSession();
		 //c company = (c) httpSession.getAttribute("c");
		
		return SUCCESS;
	}
	//private Author author;

	public c getC() {
		return c;
	}

	public void setC(c c) {
		this.c = c;
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
