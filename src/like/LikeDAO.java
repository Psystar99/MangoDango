package like;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeDAO {
/*	
	private Connection conn;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public LikeDAO() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/bbs?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="자기 패스워";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//1.좋아요 눌렀는지 DB에서 확인 함------------좋아요 눌러본 적 없는 음식점은 null이 반환--------------------------------------------------------------------
		public int checkLike(String userID, String fshopID) {
			String SQL="SELECT userpassword FROM user WHERE userid = ?";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(userID)&&rs.getString(2).equals(fshopID))
						return 1;	
					else
						return 0;	
				}
				return -1;			
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2;}
		//1.좋아요 눌렀는지 DB에서 확인 함------------좋아요 눌러본 적 없는 음식점은 null이 반환--------------------------------------------------------------------
		public int updateLike(String userID, String fshopID) {
			String SQL="UPDATE userpassword FROM user WHERE userid = ?";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(userID)&&rs.getString(2).equals(fshopID))
						return 1;	
					else
						return 0;	
				}
				return -1;			
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2;}
		*/

}
