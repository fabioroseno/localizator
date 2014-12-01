package br.com.localizator.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.localizator.model.Location;
import br.com.localizator.repository.LocationRepository;
import br.com.localizator.service.LocationService;

/**
 * @author Fábio Roseno
 */
@Service("locationService")
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationRepository locationRepository;
	
	@Transactional
	public void saveLocation(Location location) {
		locationRepository.saveLocation(location);
	}

	@Transactional(readOnly = true)
	public Location getLocation(Integer id) {
		return locationRepository.getLocation(id);
	}

	@Transactional(readOnly = true)
	public List<Location> listLocations() {
		return locationRepository.listLocations();
	}

	@Transactional
	public void deleteLocation(Integer id) {
		locationRepository.deleteLocation(id);
	}

}
