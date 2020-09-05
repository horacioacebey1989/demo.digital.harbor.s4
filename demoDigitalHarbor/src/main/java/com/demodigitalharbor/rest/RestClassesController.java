package com.demodigitalharbor.rest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demodigitalharbor.model.classes;
import com.demodigitalharbor.repo.IClassesRepo;


@RestController
@RequestMapping ("/classes")
public class RestClassesController {
	@Autowired
	private IClassesRepo repo;
	
	@GetMapping
	public List<classes> listALL()
	{
		return repo.findAll();
	}
	
	@PostMapping
	public void insertClasses(@RequestBody classes cla)
	{
		repo.save(cla);
	}
	
	@PutMapping
	public void updateClasses(@RequestBody classes cla)
	{
		repo.save(cla);
	}
	
	@DeleteMapping
	public void deleteClasses(@PathVariable("code") String code)
	{
		repo.deleteById(code);
	}
	
	
	
	
}
