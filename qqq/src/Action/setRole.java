package Action;

import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.project;
import Model.Role;
import Model.time;

public class setRole implements Action {
	
	Role r;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		r.setNumberleft(r.getNumber());
		r.saverole();
		return SUCCESS;
	}
	//private Author author;

	public Role getR() {
		return r;
	}

	public void setR(Role r) {
		this.r = r;
	}



	
}