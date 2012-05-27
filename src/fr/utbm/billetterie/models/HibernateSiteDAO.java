package fr.utbm.billetterie.models;

import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class HibernateSiteDAO implements SiteDAOInterface {

	@Override
	public List<Spectacle> getAllSpectacle() {
		Session session = HibernateUtil.getSessionFactory().openSession(); //See the HibernateUtil class detailed
		Transaction transaction = null;
		List<Spectacle> spectacles=null;;
		try {
			
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Spectacle");
		
			spectacles = query.list();
		for (Spectacle spectacle : spectacles) {
			Hibernate.initialize(spectacle.getPublicites());
			Hibernate.initialize(spectacle.getCategorieSpectacle());
			Hibernate.initialize(spectacle.getRepresentations());
			Set<Representation> representations=spectacle.getRepresentations();
			for (Representation representation : representations) {
				Hibernate.initialize(representation.getSalle());
			}
		}

		} catch (HibernateException he) {
			he.printStackTrace();
			System.out.println("Ereur");
			if(transaction != null) {
				try { transaction.rollback(); } catch(HibernateException he2) {
					he2.printStackTrace(); }
			}
		}
		finally {
			if(session != null) {
				try { session.close(); } catch(HibernateException he) {
					he.printStackTrace(); }
			}
		}
		return spectacles;
	}

	@Override
	public List<Salle> getAllSalle() {
		Session session = HibernateUtil.getSessionFactory().openSession(); //See the HibernateUtil class detailed
		Transaction transaction = null;
		List<Salle> salles=null;;
		try {
			
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Salle");
		
			salles = query.list();
		for (Salle salle : salles) {
			Hibernate.initialize(salle.getRepresentations());
			Hibernate.initialize(salle.getDescriptionSalle());
		}

		} catch (HibernateException he) {
			he.printStackTrace();
			System.out.println("Ereur");
			if(transaction != null) {
				try { transaction.rollback(); } catch(HibernateException he2) {
					he2.printStackTrace(); }
			}
		}
		finally {
			if(session != null) {
				try { session.close(); } catch(HibernateException he) {
					he.printStackTrace(); }
			}
		}
		return salles;
	}

	@Override
	public List<Region> getAllRegion() {
		Session session = HibernateUtil.getSessionFactory().openSession(); //See the HibernateUtil class detailed
		Transaction transaction = null;
		List<Region> regions=null;;
		try {
			
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Region");
		
			regions = query.list();
		for (Region region : regions) {
			Hibernate.initialize(region.getSalles());
			Set<Salle> salles=region.getSalles();
			for (Salle salle : salles) {
				Hibernate.initialize(salle.getRepresentations());
			}
		}

		} catch (HibernateException he) {
			he.printStackTrace();
			System.out.println("Ereur");
			if(transaction != null) {
				try { transaction.rollback(); } catch(HibernateException he2) {
					he2.printStackTrace(); }
			}
		}
		finally {
			if(session != null) {
				try { session.close(); } catch(HibernateException he) {
					he.printStackTrace(); }
			}
		}
		return regions;
	}

}
