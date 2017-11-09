package Action;

import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.project;
import Model.Role;
import Model.time;

public class setRole implements Action {
	
	Role role;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		role.saverole();
		return null;
	}
	//private Author author;



	
}