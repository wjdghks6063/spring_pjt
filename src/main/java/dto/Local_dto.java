package dto;

public class Local_dto {

	private String no, title, news_name, reg_date, content, attach, search;
	private int hit;
	
	//수정
	public Local_dto(String no, String title, String news_name, String reg_date, String content, String attach,
			String search, int hit) {
		super();
		this.no = no;
		this.title = title;
		this.news_name = news_name;
		this.reg_date = reg_date;
		this.content = content;
		this.attach = attach;
		this.search = search;
		this.hit = hit;
	}
	//전체
	
	public Local_dto(String no, String title, String news_name, String reg_date, String content, String attach,
			String search) {
		super();
		this.no = no;
		this.title = title;
		this.news_name = news_name;
		this.reg_date = reg_date;
		this.content = content;
		this.attach = attach;
		this.search = search;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNews_name() {
		return news_name;
	}
	public void setNews_name(String news_name) {
		this.news_name = news_name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttatch(String attach) {
		this.attach = attach;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
	
	
}
