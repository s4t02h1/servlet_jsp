package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.LibraryUser;
import dao.LibraryUserDAO;;

public class LoginAction extends Action {
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			) throws Exception {
		HttpSession session = request.getSession();

		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String error = request.getParameter("error");
		LibraryUserDAO dao = new LibraryUserDAO();
		LibraryUser libraryUser = dao.search(login, password);

		if (libraryUser != null) {
			session.setAttribute("customer", libraryUser);
			return "login-out.jsp";
		}
			session.setAttribute("error", error);
		return "login-in.jsp";
	}
}
