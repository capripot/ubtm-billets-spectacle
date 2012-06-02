package fr.utbm.billetterie.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

import fr.utbm.billetterie.models.HibernateSpectacleDAO;
import fr.utbm.billetterie.models.SpectacleDAOInterface;

/**
 * Servlet implementation class RechercheController
 */
public class RechercheController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercheController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		SpectacleDAOInterface spectacleDAO = new HibernateSpectacleDAO();
		if(request.getParameter("recherche") != null){
			request.setAttribute("spectacles", spectacleDAO.searchNomSpectacle(request.getParameter("recherche")));
			request.getRequestDispatcher("recherche.jsp").forward(request, response);
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
