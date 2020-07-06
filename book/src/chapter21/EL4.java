package chapter21;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

/**
 * Servlet implementation class EL4
 */
@WebServlet(urlPatterns = {"/chapter21/EL4"})
public class EL4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EL4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Page.header(out);

		int[] array = {0,1,2};
		request.setAttribute("array", array);

		List<String> list = new ArrayList<>();
		list.add("zero");
		list.add("one");
		list.add("two");
		request.setAttribute("list", list);

		Map<String, String> map = new HashMap<>();
		map.put("zero", "零");
		map.put("one", "壱");
		map.put("two", "弐");
		request.setAttribute("map", map);
		request.getRequestDispatcher("el4.jsp").forward(request, response);
	}

}
