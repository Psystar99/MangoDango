package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserNicknameCheckServlet")
public class UserNicknameCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserNicknameCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String userNickname=request.getParameter("userNickname");
		response.getWriter().write(new UserDAO().NicknameCheck(userNickname)+"");
	}
}
