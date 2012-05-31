package fr.utbm.billetterie.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.utbm.billetterie.models.Region;
import fr.utbm.billetterie.models.Representation;
import fr.utbm.billetterie.models.Salle;
import fr.utbm.billetterie.models.Site;
import fr.utbm.billetterie.models.Spectacle;

/**
 * Servlet implementation class RegionController
 */
public class RegionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO: recuperé ces infi depuis un enum generé avec la bdd
		List<String> nomregion=new ArrayList<String>();
		nomregion.add("Ile de France / Paris");
		nomregion.add("Nord");
		nomregion.add("Est");
		nomregion.add("Ouest");
		nomregion.add("Sud");
		request.setAttribute("nomRegion", nomregion);
		
		if(request.getParameter("region")==null){	
		request.getRequestDispatcher("region.jsp").forward(request, response);
		return;
		}else{
			List<Spectacle> spectacles= new ArrayList<Spectacle>();
			List<Region> regions=Site.getRegions();
			List<String> nomspectacle= new ArrayList<String>();
			for(Region reg : Site.getRegions()){
				if(reg.getNomRegion().equals(request.getParameter("region"))){
					Set<Salle> salles=reg.getSalles();
					for (Salle salle : salles) {
						Set<Representation> repres=salle.getRepresentations();
						for (Representation representation : repres) {
							if(!nomspectacle.contains(representation.getNomSpectacle())){
								nomspectacle.add(representation.getNomSpectacle());
							}
						}
						
					}
				}
			}
			request.setAttribute("region", request.getParameter("region"));
			request.setAttribute("nomspectacle", nomspectacle);
			request.getRequestDispatcher("region.jsp").forward(request, response);
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
