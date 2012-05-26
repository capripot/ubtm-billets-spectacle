package fr.utbm.billetterie.models;

// Generated 26 mai 2012 13:57:04 by Hibernate Tools 3.4.0.CR1

import java.util.List;
import javax.naming.InitialContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

/**
 * Home object for domain model class CategorieSpectacle.
 * @see test.CategorieSpectacle
 * @author Hibernate Tools
 */
public class CategorieSpectacleHome {

	private static final Log log = LogFactory
			.getLog(CategorieSpectacleHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext()
					.lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException(
					"Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(CategorieSpectacle transientInstance) {
		log.debug("persisting CategorieSpectacle instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(CategorieSpectacle instance) {
		log.debug("attaching dirty CategorieSpectacle instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CategorieSpectacle instance) {
		log.debug("attaching clean CategorieSpectacle instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(CategorieSpectacle persistentInstance) {
		log.debug("deleting CategorieSpectacle instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CategorieSpectacle merge(CategorieSpectacle detachedInstance) {
		log.debug("merging CategorieSpectacle instance");
		try {
			CategorieSpectacle result = (CategorieSpectacle) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public CategorieSpectacle findById(java.lang.String id) {
		log.debug("getting CategorieSpectacle instance with id: " + id);
		try {
			CategorieSpectacle instance = (CategorieSpectacle) sessionFactory
					.getCurrentSession().get("test.CategorieSpectacle", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(CategorieSpectacle instance) {
		log.debug("finding CategorieSpectacle instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("test.CategorieSpectacle")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
