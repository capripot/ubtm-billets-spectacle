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
import fr.utbm.billetterie.models.Spectacle;

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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<Representation> representations = new ArrayList<Representation>();
		List<String> listSalle = new ArrayList<String>();
		for(Spectacle spect : Site.getSpectacles()){
				if(spect.getNomSpect().equals(request.getParameter("spectacle"))){
					Set<Representation> setRepresentation = spect.getRepresentations();
					for(Representation rep : setRepresentation ){
						representations.add(rep);
						if(!listSalle.contains(rep.getNomSalle()) ){
							listSalle.add(rep.getNomSalle());
						}
					}
					request.setAttribute("representations", representations);	
					request.setAttribute("salles", listSalle);
					request.setAttribute("nomspectacle",spect.getNomSpect());
					
					request.getRequestDispatcher("spectacle.jsp").forward(request, response);
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
