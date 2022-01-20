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
		/*---기부목록--------------------------------------------------*/
		/*오늘의 기부 내용*/
		request.setAttribute("TD_list_num", dao.getToday().size());
		request.setAttribute("TD_list", dao.getToday());
		request.setAttribute("TDD_list_num", dao.getTodayDeadline().size());
		request.setAttribute("TDD_list", dao.getTodayDeadline());
		request.setAttribute("TDC_list_num", dao.getTodayComplete().size());
		request.setAttribute("TDC_list", dao.getTodayComplete());
		/*이번주 기부내용*/
		request.setAttribute("TWD_list_num", dao.getThisWeekDeadline().size());
		request.setAttribute("TWD_list", dao.getThisWeekDeadline());
		request.setAttribute("TWC_list_num", dao.getThisWeekComplete().size());
		request.setAttribute("TWC_list", dao.getThisWeekComplete());
		request.setAttribute("TWP_list_num", dao.getThisWeekProceeding().size());
		request.setAttribute("TWP_list", dao.getThisWeekProceeding());
		request.setAttribute("TW_list_num", dao.getThisWeek().size());
		request.setAttribute("TW_list", dao.getThisWeek());
		/*이번달 기부내용*/
		request.setAttribute("TMD_list_num", dao.getThisMonthDeadline().size());
		request.setAttribute("TMD_list", dao.getThisMonthDeadline());
		request.setAttribute("TMC_list_num", dao.getThisMonthComplete().size());
		request.setAttribute("TMC_list", dao.getThisMonthComplete());
		request.setAttribute("TMP_list_num", dao.getThisMonthProceeding().size());
		request.setAttribute("TMP_list", dao.getThisMonthProceeding());
		request.setAttribute("TM_list_num", dao.getThisMonth().size());
		request.setAttribute("TM_list", dao.getThisMonth());
		/*-----------------------------------------------------------*/
		request.setAttribute("PV_list", dao.getProceedingVol());
		request.setAttribute("PD_list", dao.getProceedingDona());
		request.setAttribute("vol_list", dao.getVolToday());
		request.setAttribute("dao", dao);
		request.setAttribute("list", dao.getSearchList());
	}
}
