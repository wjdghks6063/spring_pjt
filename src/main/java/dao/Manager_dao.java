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
	
	//오늘 기부 목록
	
	public ArrayList<Manager_dto> getDonaToday(){
		ArrayList<Manager_dto> list = new ArrayList<>();
		String query="select a.search, sum(b.amount) AS total_money from donation a, mypage_dona_history b \r\n" + 
				" where a.no = b.no\r\n" + 
				" and b.dona_date = to_char(CURRENT_DATE, 'yyyy-MM-dd')\r\n" + 
				" GROUP BY a.search";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String search = rs.getString("search");
				int total_money = rs.getInt("total_money");
				
				list.add(new Manager_dto(search, total_money));
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
		
		return list;
	}
	
	public ArrayList<Manager_dto> getSearchList() {
		ArrayList<Manager_dto> list = new ArrayList<>();
		String query="SELECT * FROM dona_category";
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String search_code = rs.getString("search_code");
				String search_name = rs.getString("search_name");
				
				list.add(new Manager_dto(search_code, search_name));
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
