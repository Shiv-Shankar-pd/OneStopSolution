package com.onestopsolution.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.onestopsolution.dao.ExpiredVehicleRepository;
import com.onestopsolution.modal.Owner;
import com.onestopsolution.modal.Vehicle;

@Controller
public class GenericController {
	
	@Autowired
	ExpiredVehicleRepository expiredVehicleRepository;
	
	public GenericController() {
		System.out.println("Generic Controller crrated !!!!!!!!!!!");
	}

	@RequestMapping("/ownerInput")
	public ModelAndView getOwnerInputPage() {
		return new ModelAndView("ownerInput");
	}
	@RequestMapping("/vehicleInput")
	public ModelAndView getVehicleInputPage() {
		return new ModelAndView("vehicleInput");
	}
	
	@RequestMapping("/getVehicles")
	public ModelAndView getVehicles() {
		return new ModelAndView("vehicleDetail");
	}
	
	@RequestMapping("/home")
	public ModelAndView homePage() {
		Calendar c=Calendar.getInstance();
		c.add(Calendar.DATE, 5);
		
		List<Vehicle> expiredVehicles=expiredVehicleRepository.getExpiredVehicle(new Date(),new Date(c.getTimeInMillis()));
		System.out.println("expiredVehicles::"+expiredVehicles);
		return new ModelAndView("home","expiredVehicles",expiredVehicles);
	}
	@RequestMapping("/ping")
	public ModelAndView ping() {
		return new ModelAndView("ping");
	}
	
}
