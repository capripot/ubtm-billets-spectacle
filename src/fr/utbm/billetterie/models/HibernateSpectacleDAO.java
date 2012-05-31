package fr.utbm.billetterie.models;

import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class HibernateSpectacleDAO implements SpectacleDAOInterface {

	@Override
	public List<Spectacle> searchNomSpectacle(String nom) {
		Session session = HibernateUtil.getSessionFactory().openSession(); //See the HibernateUtil class detailed
		Transaction transaction = null;
		List<Spectacle> spectacles=null;;
		try {
			
			transaction = session.beginTransaction();
	
			nom = "%" + nom + "%";
			Query query = session.createQuery("from Spectacle where lower(nom_spect) like lower(:spectacle)");
			query.setParameter("spectacle", nom);
			spectacles = query.list();
	

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

}
