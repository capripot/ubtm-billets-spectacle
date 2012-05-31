package fr.utbm.billetterie.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.utbm.billetterie.models.Representation;
import fr.utbm.billetterie.models.Salle;
import fr.utbm.billetterie.models.Site;
import fr.utbm.billetterie.models.SiteDAOInterface;

/**
 * Servlet implementation class SalleController
 */
public class SalleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> listSpectacle = new ArrayList<String>();
		for(Salle salle : Site.getSalle()){
			if(salle.getNomSalle().equals(request.getParameter("salle"))){
				Set<Representation> representations=salle.getRepresentations();
				for(Representation rep : representations){
					if(!listSpectacle.contains(rep.getNomSpectacle()) ){
						listSpectacle.add(rep.getNomSpectacle());
					}
				}
				request.setAttribute("spectacles", listSpectacle);
				request.setAttribute("salle", salle);
				request.getRequestDispatcher("salle.jsp").forward(request, response);
				return;
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
