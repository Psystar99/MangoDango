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
			String dbPassword = "자기 비";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public float calStar(int fshopID) {
		float star=0;
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
		return star;
	}

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

	public int writeReview(String userName, int fshopID, String bbsContent, float star) {
		// insert into review values('t1',1,'2020-11-27',"맛굿",4.5,1);
		String SQL = "INSERT INTO review VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setInt(2, fshopID);
			pstmt.setString(3, getDate());
			pstmt.setString(4, bbsContent);
			pstmt.setFloat(5, star);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public ArrayList<Review> getReview(int fshopid) {
		// select * from review where fshop=1 and rvavailable=1 order by rvdate;
		String SQL = "select * from review where fshop=? and rvavailable=? order by rvdate";
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

	public int checkReview(int fshop, String userName) {
		// select rvavailable from review where username = 't1' and fshop= 1;
		String SQL = "select rvavailable from review where username = ? and fshop= ?";
		try {
			int index;
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setInt(2, fshop);
			rs = pstmt.executeQuery();
			if (rs.next()) {// 있긴 있는데 0인경우랑 아예 없는 경우 써도
				if (rs.getInt(1) == 1) {
					index = 0;
				} else {
					index = 1;
				}
			} else {
				index = 1;// 사용 가능한 id
			}
			return index;

		} catch (Exception e) {
			e.printStackTrace();

		}
		return -1;
	}

	public int updateReview(int fshop, String userName, String bbsContent) {
		// update review set rvcontent="냠냠굿" where username='t1' and fshop=1;
		String SQL = "update review set rvcontent = ? where username = ? and fshop= ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, bbsContent);
			pstmt.setString(2, userName);
			pstmt.setInt(3, fshop);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		}
		return -1;//
	}

	public int deleteReview(int fshop, String userName) {
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
