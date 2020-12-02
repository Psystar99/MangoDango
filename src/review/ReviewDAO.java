package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bbs.Bbs;

public class ReviewDAO {

	private Connection conn;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public ReviewDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/mango?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "durmagkfajsl99";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//1. 음식점 전체 평점 구하는 함수  
	public double calStar(int fshopID) {
		double star=0;
		int fnum=0;
		String SQL="select star from review where fshop=?";
		try {
		 pstmt = conn.prepareStatement(SQL);
		 pstmt.setInt(1, fshopID);
		 rs = pstmt.executeQuery();
		 while (rs.next()) {
			 star+=rs.getFloat(1);
			 fnum+=1;
		 }

		} catch (Exception e) {
			e.printStackTrace();
		}
		star/=fnum;
		star=Math.round(star*100)/100.0;
		return star;
	}

	//2. 시간 구하는 함수- 원정, 은동은 신경안써도 됨 
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return "";//
	}
	
	//3. 리뷰 등록함수 
	public int writeReview(String userName, int fshopID, String bbsContent, double star) {
		// insert into review values('t1',1,'2020-11-27',"맛굿",4.5,1);
		String SQL = "INSERT INTO review VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setInt(2, fshopID);
			pstmt.setString(3, getDate());
			pstmt.setString(4, bbsContent);
			pstmt.setDouble(5, star);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	//4. 음식점에 대한 모든 리뷰 출력 함수 -음식점 리뷰 페이
	public ArrayList<Review> getFshopReview(int fshopid) {
		// select * from review where fshop=1 and rvavailable=1 order by rvdate;
		String SQL = "select * from review where fshop=? and rvavailable=1 order by rvdate";
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, fshopid);
			// pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Review bbs = new Review();
				bbs.setUserName(rs.getString(1));
				bbs.setFshopID(rs.getInt(2));
				bbs.setBbsDate(rs.getString(3));
				bbs.setBbsContent(rs.getString(4));
				bbs.setStar(rs.getFloat(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return list;
	}
	
	//5. 사용자에 대한 모든 리뷰 출력 함수-사용자 마이페이
	public ArrayList<Review> getUserReview(String userName) {
		// select * from review where fshop=1 and rvavailable=1 order by rvdate;
		String SQL = "select * from review where username=? and rvavailable=1 order by rvdate";
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			// pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Review bbs = new Review();
				bbs.setUserName(rs.getString(1));
				bbs.setFshopID(rs.getInt(2));
				bbs.setBbsDate(rs.getString(3));
				bbs.setBbsContent(rs.getString(4));
				bbs.setStar(rs.getFloat(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return list;
	}

	//6. 해당 사용자가 해당 음식점에대해 쓴 리뷰가 남아있는지 확인하는 함수, 사용자는 하나의 식당에 하나의 리뷰만 쓸 수 있다. 해당 메소드  리턴 값이 0이면 사용자는 글 작성이 제한된
	public int checkReview(String userName,int fshop) {
		// select rvavailable from review where username = 't1' and fshop= 1;
		String SQL = "select rvavailable from review where username = ? and fshop= ?";
		try {
			int index;
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setInt(2, fshop);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getInt(1) == 1) {
					index = 0;// 해당 음식점에 대해 리뷰가 있는 상태라 글 작성 불가 
				} else {
					index = 1;// 해당 음식점에 대해 리뷰가 있었지만 지운  상태라 글 작성 가능 
				}
			} else {
				index = 1;// 해당 음식점에 대해 한 번도 리뷰를 써본 적이 없음 
			}
			return index;

		} catch (Exception e) {
			e.printStackTrace();

		}
		return -1;
	}

	//7. 리뷰 수정 메소드 
	public int updateReview(String userName, int fshop, String bbsContent, double star) {
		// update review set rvcontent="냠냠굿" where username='t1' and fshop=1;
		String SQL = "update review set rvcontent = ?, star = ? where username = ? and fshop= ? and rvavailable =1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, bbsContent);
			pstmt.setDouble(2, star);
			pstmt.setString(3, userName);
			pstmt.setInt(4, fshop);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		}
		return -1;//
	}
	
	//8.리뷰 삭제 메소드 
	public int deleteReview(String userName,int fshop) {
		// "UPDATE review SET rvavailable =0 WHERE username = 't1' and fshop= 1;
		String SQL = "UPDATE review SET rvavailable =0 WHERE username = ? and fshop= ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userName);
			pstmt.setInt(2, fshop);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		}
		return -1;
	}

}
