package Action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpSession;  
import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.Author;
import Model.Book;
import Service.BookService;
import java.util.*;
import com.opensymphony.xwork2.*;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;
import java.io.PrintWriter;
import javax.servlet.http.*;     

public class chomepage implements Action {
	c c;
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request)  
    {  
        this.request = request;  
    }  
	@Override
	public String execute() throws Exception {
		 HttpSession httpSession =ServletActionContext.getRequest().getSession();
		 c company = (c) httpSession.getAttribute("c");
		 
		return null;
	}
}
