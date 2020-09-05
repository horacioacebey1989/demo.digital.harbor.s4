package com.demodigitalharbor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demodigitalharbor.model.classes;
import com.demodigitalharbor.repo.IClassesRepo;

@Controller
public class ClassesController {
	
	@Autowired
	private IClassesRepo repo;
	
	
	@GetMapping("/prueba")
	public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
		
		classes cl = new classes();
		cl.setCode("CD1");
		cl.setTitle("Prueba1");
		cl.setDescription("Probando primera desc");
		repo.save(cl);
		
		model.addAttribute("name", name);
		return "greeting";
	}
}
