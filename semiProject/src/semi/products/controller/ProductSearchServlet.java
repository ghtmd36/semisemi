package semi.products.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.products.model.service.ProductsService;
import semi.products.model.vo.Product;

/**
 * Servlet implementation class ProductSearchServlet
 */
@WebServlet("/psearch")
public class ProductSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String keyword = request.getParameter("keyword");
		
		RequestDispatcher view = null;
		try {
			ArrayList<Product> list = new ProductsService().selectProduct(keyword);
			
			if(list.size() > 0){
				view = request.getRequestDispatcher("views/product/productSearchList.jsp");
				request.setAttribute("productList", list);
				view.forward(request, response);
				System.out.println(keyword);
				System.out.println(list);
			}else{
				view = request.getRequestDispatcher("views/product/productsError.jsp");
				request.setAttribute("message", keyword + "에 해당하는 제품이 없습니다.");
				view.forward(request, response);
			}
		} catch (Exception e) {
			view = request.getRequestDispatcher("views/product/productsError.jsp");
			request.setAttribute("message", e.getMessage());
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
