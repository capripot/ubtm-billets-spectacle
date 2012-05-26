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
 * Home object for domain model class BilletSpectacle.
 * @see test.BilletSpectacle
 * @author Hibernate Tools
 */
public class BilletSpectacleHome {

	private static final Log log = LogFactory.getLog(BilletSpectacleHome.class);

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

	public void persist(BilletSpectacle transientInstance) {
		log.debug("persisting BilletSpectacle instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(BilletSpectacle instance) {
		log.debug("attaching dirty BilletSpectacle instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(BilletSpectacle instance) {
		log.debug("attaching clean BilletSpectacle instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(BilletSpectacle persistentInstance) {
		log.debug("deleting BilletSpectacle instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public BilletSpectacle merge(BilletSpectacle detachedInstance) {
		log.debug("merging BilletSpectacle instance");
		try {
			BilletSpectacle result = (BilletSpectacle) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public BilletSpectacle findById(BilletSpectacleId id) {
		log.debug("getting BilletSpectacle instance with id: " + id);
		try {
			BilletSpectacle instance = (BilletSpectacle) sessionFactory
					.getCurrentSession().get("test.BilletSpectacle", id);
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

	public List findByExample(BilletSpectacle instance) {
		log.debug("finding BilletSpectacle instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("test.BilletSpectacle")
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
