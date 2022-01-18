package command.manager;

import javax.servlet.http.HttpServletRequest;

import common.Command;
import dao.Manager_dao;

public class Manager_donation implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id = request.getParameter("t_id");
		Manager_dao dao = new Manager_dao();
		
		request.setAttribute("PV_list", dao.getProceedingVol());
		request.setAttribute("PD_list", dao.getProceedingDona());
		request.setAttribute("vol_list", dao.getVolToday());
		request.setAttribute("item_list", dao.getDonaToday());
		request.setAttribute("dao", dao);
		request.setAttribute("list", dao.getSearchList());
	}
}
