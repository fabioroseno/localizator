package br.com.localizator.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.localizator.model.Location;
import br.com.localizator.repository.LocationRepository;

/**
 * @author Fábio Roseno
 */
@Repository
public class LocationRepositoryImpl implements LocationRepository {

	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * Singleton da Sess�o
	 * @return
	 */
	private Session getSession() {
		Session session = getSessionFactory().getCurrentSession();
		if (session == null) {
			session = getSessionFactory().openSession();
		}
		return session;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/* (non-Javadoc)
	 * @see br.com.localizacao.dao.LocationDAO#saveLocation(br.com.localizacao.model.Location)
	 */
	public void saveLocation(Location location) {
		getSession().saveOrUpdate(location);
	}

	/* (non-Javadoc)
	 * @see br.com.localizacao.dao.LocationDAO#getLocation(java.lang.Integer)
	 */
	public Location getLocation(Integer id) {
		return (Location) getSession().get(Location.class, id);
	}

	/* (non-Javadoc)
	 * @see br.com.localizacao.dao.LocationDAO#listLocations()
	 */
	@SuppressWarnings("unchecked")
	public List<Location> listLocations() {
		return getSession().createCriteria(Location.class).list();
	}

	/* (non-Javadoc)
	 * @see br.com.localizacao.dao.LocationDAO#deleteLocation(br.com.localizacao.model.Location)
	 */
	public void deleteLocation(Integer id) {
		getSession().createQuery("DELETE FROM Location WHERE id = "+id).executeUpdate();
	}

}
