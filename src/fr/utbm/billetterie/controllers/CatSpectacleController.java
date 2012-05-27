package fr.utbm.billetterie.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.utbm.billetterie.models.HibernateSpectacleDAO;
import fr.utbm.billetterie.models.Publicite;
import fr.utbm.billetterie.models.Site;
import fr.utbm.billetterie.models.Spectacle;


/**
 * Servlet implementation class SpectacleController
 */
public class CatSpectacleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CatSpectacleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Spectacle> spectacles = new ArrayList<Spectacle>();
		for(Spectacle spect :Site.spectacles){
			if(((spect.getCategorieSpectacle().getNomCat()).toLowerCase()).equals(request.getParameter("cat"))){
				spectacles.add(spect);
			}
	
		}
		request.setAttribute("cat",request.getParameter("cat"));
		request.setAttribute("spectacles", spectacles);
		request.getRequestDispatcher("catspectacle.jsp").forward(request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
