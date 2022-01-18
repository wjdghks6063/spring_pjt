package com.team.pjt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import command.manager.Manager_donation;
import command.manager.Manager_home;
import common.Command;

@Controller
public class ManagerController {
	@RequestMapping("Manager")
	public String Manager(HttpServletRequest request) {
		String gubun = request.getParameter("t_gubun");
		System.out.println("gubun : " + gubun);

		if (gubun == null)
			gubun = "Home";
		String viewPage = "";
		if (gubun.equals("Home")) {
			// 매니저 기본화면 리스트//
			Command manager = new Manager_home();
			manager.execute(request);
			viewPage = "manager/manager_home";

		}else if(gubun.equals("Dona")) {
			//기부 뷰
			Command manager = new Manager_donation();
			manager.execute(request);
			viewPage="manager/manager_donation";
		}
		
		return viewPage;
	}

}