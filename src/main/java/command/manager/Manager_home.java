package command.manager;

import javax.servlet.http.HttpServletRequest;

import common.Command;
import dao.Manager_dao;
import dao.Member_dao;
import dto.Manager_dto;
import dto.Member_dto;

public class Manager_home implements Command {
	
	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id = request.getParameter("t_id");
		Manager_dao dao = new Manager_dao();
		
		request.setAttribute("total_list", dao.getDonaToday());
		request.setAttribute("list", dao.getSearchList());
	}

}