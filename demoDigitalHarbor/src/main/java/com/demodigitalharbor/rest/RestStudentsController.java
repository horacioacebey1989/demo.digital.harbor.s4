package com.demodigitalharbor.rest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demodigitalharbor.model.classes;
import com.demodigitalharbor.model.students;
import com.demodigitalharbor.repo.IStudentsRepo;
import com.demodigitalharbor.controller.HomeController;

@RestController
public class RestStudentsController {
	@Autowired
	private IStudentsRepo repo;
	
	@GetMapping
	public List<students> listALL()
	{
		return repo.findAll();
	}
	
	@PostMapping
	public void insertStudents(@RequestBody students cla)
	{
		repo.save(cla);
	}
	
	@PutMapping
	public void updateStudents(@RequestBody students cla)
	{
		repo.save(cla);
	}
	
	@DeleteMapping
	public void deleteStudents(@PathVariable("id_student") int id)
	{
		repo.deleteById(id);
	}

}
