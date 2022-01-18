package dto;

public class Manager_dto {
	private String search_code, search_name, do_title, do_start_date, do_end_date, dominator, 
			vol_title, volname, vol_site, vol_start_date, vol_end_date;
	private int item_money, start_vol, end_vol, total_vol, do_total, do_goal, vol_total, vol_goal;

	//진행중인 봉사 표시
	public Manager_dto(String vol_title, String volname, String vol_site, String vol_start_date, String vol_end_date,
			int vol_total, int vol_goal) {
		this.vol_title = vol_title;
		this.volname = volname;
		this.vol_site = vol_site;
		this.vol_start_date = vol_start_date;
		this.vol_end_date = vol_end_date;
		this.vol_total = vol_total;
		this.vol_goal = vol_goal;
	}
	
	//진행중인 기부 표시
	public Manager_dto(String do_title, String do_start_date, String do_end_date, String dominator, int do_total, int do_goal) {
		this.do_title = do_title;
		this.do_start_date = do_start_date;
		this.do_end_date = do_end_date;
		this.dominator = dominator;
		this.do_total = do_total;
		this.do_goal = do_goal;
	}

	//오늘의 봉사 일정
	public Manager_dto(int end_vol, int total_vol, int start_vol) {
		this.end_vol = end_vol;
		this.total_vol = total_vol;
		this.start_vol = start_vol;
	}

	//오늘의 기부 이름과 금액
	public Manager_dto(String search_name, int item_money) {
		super();
		this.search_name = search_name;
		this.item_money = item_money;
	}


	public int getItem_money() {
		return item_money;
	}


	public String getSearch_code() {
		return search_code;
	}


	public String getSearch_name() {
		return search_name;
	}	
	
	public int getStart_vol() {
		return start_vol;
	}


	public int getEnd_vol() {
		return end_vol;
	}


	public int getTotal_vol() {
		return total_vol;
	}

	public String getDo_title() {
		return do_title;
	}

	public String getDo_start_date() {
		return do_start_date;
	}

	public String getDo_end_date() {
		return do_end_date;
	}

	public String getDominator() {
		return dominator;
	}

	public int getDo_total() {
		return do_total;
	}

	public int getDo_goal() {
		return do_goal;
	}

	public String getVol_title() {
		return vol_title;
	}

	public String getVolname() {
		return volname;
	}

	public String getVol_site() {
		return vol_site;
	}

	public String getVol_start_date() {
		return vol_start_date;
	}

	public String getVol_end_date() {
		return vol_end_date;
	}

	public int getVol_total() {
		return vol_total;
	}

	public int getVol_goal() {
		return vol_goal;
	}

	
}
