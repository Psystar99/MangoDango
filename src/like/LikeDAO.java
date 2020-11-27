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
			String dbPassword="자기 비";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	/* 1.좋아요 눌렀는지 DB에서 확인 함
	 * 
	 * 2. 좋아요 정보 업데이트--> 페이지에서 처음 로딩할 때 호출했던 1번 함수 checkLike 사용(1: '좋아요'O / 0:'좋아요'X)
	 * a. checkLike함수가 1일 떄: 좋아요가 이미 눌린 상태이므로 이미 디비에 정보가 저장되어 있어서 sql= update userlike set heartavailable=0 where userid=? and fshopid=?;
	 * 
	 * b. checkLike함수가 0일 때: sql=select * from userlike where userid=? and fshop=?   : 테이블에 해당 정보가 있는가?
	 * 		b.A 테이블에 해당 정보가 없음 -> 테이블에 해당 정보 추가 sql2=insert into userlike values(?,?,?,?);
	 *		b.B 테이블에 해당 정보가 있음-> sql2= update userlike set heartavailable=1 where userid=? and fshop=?;
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
				if(rs.next()||userID.equals("")) {
					return 0;//찜한 기록 있
				}
				else {
					return 1;//한번도 찜한 적 없
				}		
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;}
		
		//2.a: 1의 return값이 1일떄
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
		
		//2.b 1의 return값이 0일떄
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
