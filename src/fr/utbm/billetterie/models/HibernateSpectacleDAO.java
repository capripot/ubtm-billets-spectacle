package fr.utbm.billetterie.models;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class HibernateSpectacleDAO {

	public Spectacle getSpectacle(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession(); //See the HibernateUtil class detailed
		Transaction transaction = null;
		Spectacle movie=null;
		try {
			
			transaction = session.beginTransaction();
			movie = (Spectacle)session.get(Spectacle.class, id);

			transaction.commit();
		} catch (HibernateException he) {
			he.printStackTrace();
			System.out.println("EREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEr");
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
		return movie;
	}

}
