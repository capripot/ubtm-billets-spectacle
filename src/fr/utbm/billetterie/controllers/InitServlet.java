package fr.utbm.billetterie.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.utbm.billetterie.models.HibernateSiteDAO;
import fr.utbm.billetterie.models.Site;
import fr.utbm.billetterie.models.SiteDAOInterface;

/**
 * Servlet implementation class InitServlet
 */
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		SiteDAOInterface dao=new HibernateSiteDAO();
		Site.setSpectacles(dao.getAllSpectacle());
		Site.setSalle(dao.getAllSalle());
		Site.setRegions(dao.getAllRegion());
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public InitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
