package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public UserDAO() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/mango?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="password";			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//1.로그인 회원가입--------------------------------------------------------------------------------
	public int login(String userID, String userPassword) {
		String SQL="SELECT userpassword FROM user WHERE userid = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1;	
				else
					return 0;	
			}
			return -1;			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	
	}
	//2.회원가입 ------------------------------------------------------- 새로운 5개 속 psmt에대한 setString,setint해주기
	public int join(UserDTO user) {
		String SQL="INSERT INTO user VALUES(?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setInt(4, user.getUserSex());
			pstmt.setString(5, user.getUserNickname());
			pstmt.setString(6, user.getUserPhonenumber());
			pstmt.setInt(7, user.getUserPreference());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return -1;
	}
	//3.아이디 중복체크-------------------------------------------------------
	public int idCheck(String userID) {
		String SQL="SELECT * FROM user WHERE userid = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			if(rs.next()||userID.equals("")) {
				return 0;
			}
			else {
				return 1;//사용 가능한 id
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; 	
	}
	//4.닉네임 중복 체크-------------------------------------------------------닉넴임 칼럼이 db에 있어야 
	public int NicknameCheck(String userNickName) {
		String SQL="SELECT * FROM user WHERE usernick = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userNickName);
			rs=pstmt.executeQuery();
			if(rs.next()||userNickName.equals("")) {
				return 0;
			}
			else {
				return 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; 	
	}
}
