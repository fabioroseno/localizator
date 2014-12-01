package br.com.localizator.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.localizator.model.Location;
import br.com.localizator.service.LocationService;

/**
 * @author Fábio Roseno
 */
@Controller
@RequestMapping("/location")
public class LocationController {
	
	private Integer locationId = null;

	@Autowired
	private LocationService locationService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String listLocations(ModelMap locationsMap) {
		locationsMap.addAttribute("location", new Location());
		locationsMap.addAttribute("locations", locationService.listLocations());
		return "location/list";
	}
	
	@RequestMapping(value = "/getSave", method = RequestMethod.GET)
	public String getLocationSave(ModelMap locationsMap) {
		this.locationId = null;
		locationsMap.addAttribute("location", new Location());
		locationsMap.addAttribute("locations", locationService.listLocations());
		return "location/save";
	}

	@RequestMapping("/getUpdate/{locationId}")
	public String getLocationUpdate(@PathVariable("locationId") 
		Integer locationId, ModelMap locationsMap) {
		this.locationId = locationId;
		Location location = locationService.getLocation(locationId);
		locationsMap.addAttribute("location", location);
		locationsMap.addAttribute("locations", locationService.listLocations());
		return "location/save";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveLocation(@Valid Location location, BindingResult result, ModelMap locationMap) {
		if(locationId != null) {
			location.setId(locationId);
		}
		if (!result.hasErrors()) {
			locationService.saveLocation(location);
			return "redirect:/location";
		} else {
			if(locationId != null) {
				this.locationId = null;
				locationMap.addAttribute("location", location);
				return "redirect:/location/getUpdate";
			} else {
				return "redirect:/location/getSave";
			}
		}
	}
	
	@RequestMapping("/delete/{locationId}")
	public String deleteLocation(@PathVariable("locationId") Integer locationId) {
		locationService.deleteLocation(locationId);
		return "redirect:/location";
	}

}
