package Action;

import com.opensymphony.xwork2.Action;
import Model.c;
//import Model.c;
import Model.project;
import Model.Role;
import Model.time;

public class setProject implements Action {
	
	project p;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		p.setStatus("on");
		p.saveproject();;
		return SUCCESS;
	}
	//private Author author;

	public project getP() {
		return p;
	}

	public void setP(project p) {
		this.p = p;
	}



	
}