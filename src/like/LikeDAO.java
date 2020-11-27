package like;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeDAO {
	
	private Connection conn;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public LikeDAO() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/mango?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="durmagkfajsl99";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	/* 1. 페이지 로딩시: heart 확인: checkLike 메소드
	 * return 값 --> 2:안채워짐, db에도 없음/ 1: 안채워짐, db있음/ 0: 채워짐  db있음
	 * 
	 * 2. 클릭 액션이 일어났을 때: 좋아요 정보 업데이트 메소드--> 페이지에서 처음 로딩할 때 호출했던 1번 함수 checkLike 사용
	 * 		a. checkLike함수가 2일 떄: pushLike 호출 --> DB에 heart=1하는 액션을 성공하면 1리턴 --> 1받으면 하트 채워줌
	 * 		b. checkLike함수가 1일 떄: reLike를 호출--> DB에 heart=1하는 액션을 성공하면 1리턴 -->1받으면 하트 채워줌
	 * 		c. checkLike함수가 0일 때: cancleLike를 호출--> DB에 heart=0하는 액션을 성공하면 1리턴 -->1받으면 하트 비줌	
	 * */
	   
	//1
		public int checkLike(String userID, int fshopID) {
			//String SQL="select heart from userlike where userid='t1' and fshop=1;";
			String SQL="select heart from userlike where userid=? and fshop=?;";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID);
				pstmt.setInt(2, fshopID);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getInt(1)==1) {return 0;}
					else if(rs.getInt(1)==0) {return 1;}
					else {
						System.out.println("heart 값에 0,1말고 다른값!");
						return -1;}
				}
				else {
					return 2;//디비에 정보가 없
				}		
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;}
		
		//2.c: 1의 return값이 0일떄
		public int cancelLike(String userID, int fshopID) {
			//String SQL="update userlike set heart=0 where userid='t1' and fshop=1;";
			String SQL="update userlike set heart=0 where userid=? and fshop=?;";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID); 
				pstmt.setInt(2,fshopID);
				return pstmt.executeUpdate();
						
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;}
		
		//2.b 1의 리턴값 1일 떄
		public int reLike(String userID, int fshopID) {
			//String SQL="update userlike set heart=0 where userid='t1' and fshop=1;";
			String SQL="update userlike set heart=1 where userid=? and fshop=?;";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID); 
				pstmt.setInt(2,fshopID);
				return pstmt.executeUpdate();
						
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;}
		
		//2.a: 1의 return값이 2일떄
		public int pushLike(String userID, int fshopID) {
			String SQL="insert into userlike values(?,?,?)";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,userID);
			    pstmt.setInt(2,fshopID);
			    pstmt.setInt(3, 1);
				return pstmt.executeUpdate();
						
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;}
		
}
