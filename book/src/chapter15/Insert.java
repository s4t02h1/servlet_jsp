package chapter15;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;
import tool.Page;

/**
 * Servlet implementation class Insert
 */
@WebServlet(name = "Insert2", urlPatterns = { "/chapter15/Insert2" })
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		Page.header(out);
		try {
			String name = request.getParameter("name");
			int price = Integer.parseInt(request.getParameter("price"));

			Product p = new Product();
			p.setName(name);
			p.setPrice(price);

			ProductDAO dao = new ProductDAO();
			int line = dao.insert(p);

			if (line > 0) {
				out.println("追加に成功しました。");
			}
		} catch (Exception e) {
			e.printStackTrace(out);
		}
		Page.footer(out);
	}

}
