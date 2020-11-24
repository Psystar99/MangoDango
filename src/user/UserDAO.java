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
		
			String dbURL="jdbc:mysql://localhost:3306/bbs?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="자기 패스워";

			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//블로
	public int login(String userID, String userPassword) {
		String SQL="SELECT userpassword FROM user WHERE userid = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1;	//�α��� ����
				else
					return 0;	//��й�ȣ ����ġ
			}
			return -1;	//���̵� ����			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;	//������ ���̽� ����
	}
	//블로드
	public int join(UserDTO user) {
		String SQL="INSERT INTO user VALUES(?, ?, ?, ?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserEmail());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return -1;	//������ ���̽� ����
	}
	//아이디 중복체크
	public int registerCheck(String userID) {
		String SQL="SELECT * FROM user WHERE userid = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			if(rs.next()||userID.equals("")) {
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
		return -1; 	//�����ͺ��̽� ����
	}
}
