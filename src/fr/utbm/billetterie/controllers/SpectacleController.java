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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//PARCOURS DE LA LISTE DES SPECTACLE, PROBLEME : 
		//Il faudrait connaitre la liste des salles pour chaque spectacle et ensuite retrouver les representations pour que ça soit plus simple ...
		
		List<Representation> representations = new ArrayList<Representation>();
		
		for(Spectacle spect :Site.getSpectacles()){
			if(((spect.getCategorieSpectacle().getNomCat()).toLowerCase()).equals(request.getParameter("cat"))){
				
				if(spect.getNumSpect()==Integer.parseInt(request.getParameter("spectacle"))){
					Set<Representation> setRepresentation=spect.getRepresentations();
					for(Representation rep : setRepresentation ){
						representations.add(rep);
					}
					request.setAttribute("representations", representations);
					request.getRequestDispatcher("spectacle.jsp").forward(request, response);
					return;
				}
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
