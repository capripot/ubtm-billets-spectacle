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
 * Home object for domain model class CategorieSpectateurTarif.
 * @see test.CategorieSpectateurTarif
 * @author Hibernate Tools
 */
public class CategorieSpectateurTarifHome {

	private static final Log log = LogFactory
			.getLog(CategorieSpectateurTarifHome.class);

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

	public void persist(CategorieSpectateurTarif transientInstance) {
		log.debug("persisting CategorieSpectateurTarif instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(CategorieSpectateurTarif instance) {
		log.debug("attaching dirty CategorieSpectateurTarif instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CategorieSpectateurTarif instance) {
		log.debug("attaching clean CategorieSpectateurTarif instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(CategorieSpectateurTarif persistentInstance) {
		log.debug("deleting CategorieSpectateurTarif instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public CategorieSpectateurTarif merge(
			CategorieSpectateurTarif detachedInstance) {
		log.debug("merging CategorieSpectateurTarif instance");
		try {
			CategorieSpectateurTarif result = (CategorieSpectateurTarif) sessionFactory
					.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public CategorieSpectateurTarif findById(java.lang.String id) {
		log.debug("getting CategorieSpectateurTarif instance with id: " + id);
		try {
			CategorieSpectateurTarif instance = (CategorieSpectateurTarif) sessionFactory
					.getCurrentSession().get("test.CategorieSpectateurTarif",
							id);
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

	public List findByExample(CategorieSpectateurTarif instance) {
		log.debug("finding CategorieSpectateurTarif instance by example");
		try {
			List results = sessionFactory.getCurrentSession()
					.createCriteria("test.CategorieSpectateurTarif")
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
