package dto;

public class Manager_dto {
	private String search, search_code, search_name;
	private int total_money;
	
	public Manager_dto(String search, int total_money) {
		super();
		this.search = search;
		this.total_money = total_money;
	}
	
	
	

	public Manager_dto(String search_code, String search_name) {
		this.search_code = search_code;
		this.search_name = search_name;
	}




	public String getSearch() {
		return search;
	}


	public int getTotal_money() {
		return total_money;
	}


	public String getSearch_code() {
		return search_code;
	}


	public String getSearch_name() {
		return search_name;
	}	
	
	
}
