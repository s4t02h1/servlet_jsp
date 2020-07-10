package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Book;
import dao.BookDAO;

public class BookAction extends Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();

		String keyword= request.getParameter("keyword");
		if (keyword == null) keyword = "";

		BookDAO dao = new BookDAO();
		List<Book> list = dao.search(keyword);

		session.setAttribute("list", list);

		return "product.jsp";
	}

}
