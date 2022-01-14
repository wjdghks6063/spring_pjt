package command.mypage;

import javax.servlet.http.HttpServletRequest;

import common.Command;
import dao.Member_dao;
import dao.Mypage_dao;
import dto.Member_dto;
import dto.Mypage_dto;

public class Mypage_home implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id = request.getParameter("t_id");
		Mypage_dao my_dao = new Mypage_dao();
		Mypage_dto my_dto = new Mypage_dto();
		Member_dao mem_dao = new Member_dao();
		Member_dto mem_dto = null;
		
		my_dto = my_dao.Mypage_home(id);
	}

}
