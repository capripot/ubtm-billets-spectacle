package fr.utbm.billetterie.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.utbm.billetterie.models.HibernateSpectacleDAO;
import fr.utbm.billetterie.models.Spectacle;
import fr.utbm.billetterie.models.SpectacleHome;

/**
 * Servlet implementation class SpectacleController
 */
public class SpectacleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpectacleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HibernateSpectacleDAO spectacleDAO= new HibernateSpectacleDAO();
		Spectacle spect=spectacleDAO.getSpectacle(1);
		request.setAttribute("spectacle", spect);
		request.getRequestDispatcher("spectacle.jsp").forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
