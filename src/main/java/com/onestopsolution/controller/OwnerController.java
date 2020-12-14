package com.onestopsolution.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.onestopsolution.dao.OwnerRepository;
import com.onestopsolution.modal.Owner;

@Controller
public class OwnerController {
	@Autowired
	private OwnerRepository ownerRepository;
	@PostMapping("/addOwner")
	public ModelAndView addOwner(Owner owner) {
		System.out.println(owner);
		ownerRepository.save(owner);
		return new ModelAndView("redirect:ownerInput");
	}
	@RequestMapping("/getOwners")
	public ModelAndView getOwners() {
		List<Owner> owners=ownerRepository.findAll();
		return new ModelAndView("ownersDetail","owners",owners);
	}
	@RequestMapping("/getOwnerDetail")
	public ModelAndView getOwner(@RequestParam(value = "aadhar", required = true)String aadhar) {
		Optional<Owner> owner=null;
		try {
	       owner=ownerRepository.findById(aadhar);
		}
		catch(Exception e) {
			
		}
		return new ModelAndView("ownerDetail","owner",owner.isPresent()? owner.get():null);
	}
}
