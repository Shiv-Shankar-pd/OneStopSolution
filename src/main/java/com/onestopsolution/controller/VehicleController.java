package com.onestopsolution.controller;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.onestopsolution.dao.VehicleRepository;
import com.onestopsolution.modal.Vehicle;

@Controller
public class VehicleController {
@Autowired
private VehicleRepository vehicleRepository;

	@PostMapping("/addVehicle")
	public ModelAndView addVehicle(Vehicle vehicle) {
		vehicleRepository.save(vehicle);
		return new ModelAndView("redirect:vehicleInput");
	}
	@GetMapping("/getVehicles")
	public ModelAndView getVehicles() {
		List<Vehicle> vehicles=vehicleRepository.findAll();
		return new ModelAndView("vehiclesDetail","vehicles",vehicles);
	}
	
	@GetMapping("/searchByVehicle")
	public ModelAndView getVehicleByVehicleNo(@RequestParam(value = "vehicleNo", required = true)String vehicleNo) {
		Optional<Vehicle> vehicle=null;
		try {
			System.out.println("in try block");
			vehicle=vehicleRepository.findById(vehicleNo);
		}
		catch(EntityNotFoundException  e) {
		System.out.println("in catch block");
		e.printStackTrace();
		}
		
		return new ModelAndView("vehicleDetail","vehicle",vehicle.isPresent()?vehicle.get():null);
	}
	
	@PostMapping("/updateVehicle")
	public ModelAndView updateVehicle(Vehicle vehicle) {
		System.out.print(vehicle);
		Vehicle v=vehicleRepository.getOne(vehicle.getVehicle_no());
		v.setAadhar(vehicle.getAadhar());
		v.setFitnessDate(vehicle.getFitnessDate());
		v.setInsuranceDate(vehicle.getInsuranceDate());
		v.setPermitDate(vehicle.getPermitDate());
		v.setPollution_date(vehicle.getPollution_date());
		v.setTaxDate(vehicle.getTaxDate());
		v.setNote(vehicle.getNote());
		vehicleRepository.save(v);
		return new ModelAndView("vehicleDetail","vehicle",v);
	}
	
	@RequestMapping("/note")
	public ModelAndView getNote(@RequestParam(value = "vehicleNo", required = true)String vNo) {
		System.out.print(vNo);
		String note=vehicleRepository.getOne(vNo).getNote();
		return new ModelAndView("note","note",note);
	}
	
	@PostMapping("/addNote")
	public ModelAndView addNote(@RequestParam(value = "vehicleNo", required = true)String vNo,@RequestParam(value = "note", required = true)String note) {
		Vehicle vehicle=vehicleRepository.getOne(vNo);
		vehicle.setNote(note);
		vehicleRepository.save(vehicle);
		ModelAndView mv= new ModelAndView("note","note",note);
		mv.addObject("msg","Note is Saved/Updated Successfully");
		return mv;
	}
	
	
}
