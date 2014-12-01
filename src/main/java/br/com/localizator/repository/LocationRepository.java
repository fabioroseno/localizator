package br.com.localizator.repository;

import java.util.List;

import br.com.localizator.model.Location;

/**
 * @author Fábio Roseno
 */
public interface LocationRepository {

	public void saveLocation(Location location);
	public Location getLocation(Integer id);
	public List<Location> listLocations();
	public void deleteLocation(Integer id);
	
}
