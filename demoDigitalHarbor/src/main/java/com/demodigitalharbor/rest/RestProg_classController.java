package com.demodigitalharbor.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demodigitalharbor.model.prog_class;
import com.demodigitalharbor.repo.IProg_class;

@RestController
@RequestMapping ("/prog_class")
public class RestProg_classController {
	
	@Autowired
	private IProg_class repo;
	
	@GetMapping
	public List<prog_class> listALL()
	{
		return repo.findAll();
	}
	
	@PostMapping
	public void insertProg_class(@RequestBody prog_class cla)
	{
		repo.save(cla);
	}

}
