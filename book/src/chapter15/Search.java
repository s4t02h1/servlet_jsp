package chapter15;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;
import tool.Page;

/**
 * Servlet implementation class Search
 */
@WebServlet(urlPatterns= {"/chapter15/Search"})
public class Search extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		Page.header(out);
		try {
			String keyword = request.getParameter("keyword");
			ProductDAO dao = new ProductDAO();
			List<Product> list = dao.search(keyword);

			request.setAttribute("list", list);
			request.getRequestDispatcher("Search2.jsp").forward(request, response);


		} catch (Exception e) {
			e.printStackTrace(out);
		}
		Page.footer(out);
	}

}
