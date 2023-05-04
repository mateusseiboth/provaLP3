package br.com.seisbot.provaLP3.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.seisbot.provaLP3.dao.ReptilDAO;
import br.com.seisbot.provaLP3.model.Reptil;

/**
 * Servlet implementation class IndexControle
 */
@WebServlet("/public")
public class IndexControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ReptilDAO reptilDAO;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexControle() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void init(){
		// TODO Auto-generated method stub
		reptilDAO = new ReptilDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		procRequest(request, response);
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		procRequest(request, response);
	}

	private void procRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");
		try {
			switch (acao) {
			case "novo":
				novoReptil(request, response);
				break;
			case "insert":
				System.out.println("Em inserir");
				insertReptil(request, response);
				break;
			case "list":
				listReptil(request, response);
				break;
			case "home":
				homeCall(request, response);
			}
			
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void novoReptil(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("public/newReptil.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listReptil(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException{
		List<Reptil> reptils = reptilDAO.listReptil();
		request.setAttribute("list", reptils);
		RequestDispatcher dispatcher = request.getRequestDispatcher(request.getServletPath() + "/listReptil.jsp");
		
		dispatcher.forward(request, response);
		
	}

	private void insertReptil(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String temperatura = request.getParameter("temperatura");
		String tamanho = request.getParameter("tamanho");
		String escama = request.getParameter("escama");
		Boolean escamaTem;
		
		if (escama == null) {
			escamaTem = false;
		} else {
			
			escamaTem = true;
		}
		
		System.out.println(escamaTem);
		
		Reptil reptil = new Reptil(temperatura, tamanho, escamaTem);
		
		Reptil responseReptil = reptilDAO.insertReptil(reptil);
		
		List<Reptil> reptils = reptilDAO.listReptil();
		request.setAttribute("list", reptils);
		RequestDispatcher dispatcher = request.getRequestDispatcher("public/listReptil.jsp");
		dispatcher.forward(request, response);	

	}
	

	private void homeCall(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
	

}
