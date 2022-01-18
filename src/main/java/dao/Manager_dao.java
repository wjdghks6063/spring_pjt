package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.DBConnection;
import dto.Manager_dto;

public class Manager_dao {
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	
	//진행중인 기부 상황 (기간이 지나지 않은 것만 표시)
			public ArrayList<Manager_dto> getProceedingVol(){
				ArrayList<Manager_dto> PV_list = new ArrayList<>();
				String query="select title, voname, volunteersite, to_char(start_date,'yyyy-MM-dd') as start_date,\r\n" + 
						"        to_char(end_date,'yyyy-MM-dd') as end_date, total, goal from volunteer\r\n" + 
						"        where start_date <= to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
						"		and end_date >= to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
						"		ORDER BY end_date asc";
				try {
					con = DBConnection.getConnection();
					ps = con.prepareStatement(query);
					rs = ps.executeQuery();
					
					while(rs.next()) {
						String vol_title 		= rs.getString("title");
						String volname 			= rs.getString("voname");
						String vol_site 		= rs.getString("volunteersite");
						String vol_start_date 	= rs.getString("start_date");
						String vol_end_date 	= rs.getString("end_date");
						int vol_total 			= rs.getInt("total");
						int vol_goal 			= rs.getInt("goal");
						
						PV_list.add(new Manager_dto(vol_title, volname, vol_site, vol_start_date, vol_end_date, vol_total, vol_goal));
					}
				} catch(SQLException e) {
					e.printStackTrace();
					System.out.println("\n\n--------------------------------------------");
					System.out.println("getProceedingVol 메소드에서 에러가 발생했습니다.");
					System.out.println("실행한 qury : "+query);
					System.out.println("--------------------------------------------\n\n");
				} finally {
					DBConnection.closeDB(con, ps, rs);
				}
				
				return PV_list;
			}
	
	
	//진행중인 기부 상황 (기간이 지나지 않은 것만 표시)
		public ArrayList<Manager_dto> getProceedingDona(){
			ArrayList<Manager_dto> PD_list = new ArrayList<>();
			String query="select title, dominator, to_char(start_date,'yyyy-MM-dd') as start_date,\r\n" + 
					"        to_char(end_date,'yyyy-MM-dd') as end_date, total, goal from donation\r\n" + 
					"        where start_date <= to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
					"		and end_date >= to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
					"		ORDER BY end_date asc";
			try {
				con = DBConnection.getConnection();
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String do_title 		= rs.getString("title");
					String do_start_date 	= rs.getString("start_date");
					String do_end_date 		= rs.getString("end_date");
					String dominator 		= rs.getString("dominator");
					int do_total 			= rs.getInt("total");
					int do_goal 			= rs.getInt("goal");
					
					PD_list.add(new Manager_dto(do_title, do_start_date, do_end_date, dominator, do_total, do_goal));
				}
			} catch(SQLException e) {
				e.printStackTrace();
				System.out.println("\n\n--------------------------------------------");
				System.out.println("getProceedingDona 메소드에서 에러가 발생했습니다.");
				System.out.println("실행한 qury : "+query);
				System.out.println("--------------------------------------------\n\n");
			} finally {
				DBConnection.closeDB(con, ps, rs);
			}
			
			return PD_list;
		}
	
	//오늘의 봉사 일정
	
	public ArrayList<Manager_dto> getVolToday(){
		ArrayList<Manager_dto> vol_list = new ArrayList<>();
		String query="select a.e_date,a.total,b.s_date\r\n" + 
				"from(\r\n" + 
				"    select count(end_date) e_date,sum(total) total from volunteer\r\n" + 
				"    where end_date = to_char(CURRENT_DATE, 'yyyy-MM-dd')) a,\r\n" + 
				"    (select count(start_date) s_date from volunteer\r\n" + 
				"    where start_date = to_char(CURRENT_DATE, 'yyyy-MM-dd')) b";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int end_vol = rs.getInt("e_date");
				int total_vol = rs.getInt("total");
				int start_vol = rs.getInt("s_date");
				
				vol_list.add(new Manager_dto(end_vol, total_vol, start_vol));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("\n\n--------------------------------------------");
			System.out.println("getVolToday 메소드에서 에러가 발생했습니다.");
			System.out.println("실행한 qury : "+query);
			System.out.println("--------------------------------------------\n\n");
		} finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return vol_list;
	}
	
	
	//오늘 기부 목록
	
	public ArrayList<Manager_dto> getDonaToday(){
		ArrayList<Manager_dto> item_list = new ArrayList<>();
		String query="select a.search_code as search, nvl(b.total_money,0) as item_money\r\n" + 
				"from dona_category a,\r\n" + 
				"    (select search, dona_date, sum(amount) AS total_money \r\n" + 
				"    from mypage_dona_history\r\n" + 
				"    where dona_date = to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
				"    GROUP BY  search, dona_date) b\r\n" + 
				"where a.search_code = b.search(+)\r\n" + 
				"order by a.search_code desc";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String search = rs.getString("search");
				int item_money = rs.getInt("item_money");
				
				item_list.add(new Manager_dto(search, item_money));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("\n\n--------------------------------------------");
			System.out.println("getDonaToday 메소드에서 에러가 발생했습니다.");
			System.out.println("실행한 qury : "+query);
			System.out.println("--------------------------------------------\n\n");
		} finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return item_list;
	}
	
	//기부 목록 리스트 (아동,노인...)
	public ArrayList<Manager_dto> getSearchList() {
		ArrayList<Manager_dto> list = new ArrayList<>();
		String query="select a.search_name , nvl(b.total_money,0) as item_money \r\n" + 
				"from dona_category a, \r\n" + 
				"    (select search, dona_date, sum(amount) AS total_money \r\n" + 
				"    from mypage_dona_history \r\n" + 
				"    where dona_date = to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
				"    GROUP BY  search, dona_date) b \r\n" + 
				"where a.search_code = b.search(+) \r\n" + 
				"order by a.search_name asc";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String search_code = rs.getString(1);
				int item_money = rs.getInt(2);
				
				list.add(new Manager_dto(search_code, item_money));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("\n\n--------------------------------------------");
			System.out.println("getSearchList 메소드에서 에러가 발생했습니다.");
			System.out.println("실행한 qury : "+query);
			System.out.println("--------------------------------------------\n\n");
		} finally {
			DBConnection.closeDB(con, ps, rs);
		}
		
		return list;
	}
	
}
