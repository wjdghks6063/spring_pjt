package com.team.pjt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import command.manager.Manager_home;
import common.Command;

@Controller
public class ManagerController {
	@RequestMapping("/Manager_home")
	public String Manager_home(HttpServletRequest request) {
		Command manager = new Manager_home();
		manager.execute(request);
		return "manager/manager_home";
	}
}