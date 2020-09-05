package com.demodigitalharbor.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demodigitalharbor.model.classes;
import com.demodigitalharbor.model.prog_class;
import com.demodigitalharbor.model.students;
import com.demodigitalharbor.repo.IClassesRepo;
import com.demodigitalharbor.repo.IProg_class;
import com.demodigitalharbor.repo.IStudentsRepo;


@Controller
public class HomeController {

	@Autowired
	private IStudentsRepo repoStu;
	@Autowired
	private IClassesRepo repoClas;
	@Autowired
	private IProg_class repoProg;
	
	@GetMapping(value="/")
	public String homePage()
	{
		return "index";
	}
	
	@GetMapping(value="/addStudents")
	public String pageAddStudents(Model model)
	{
		model.addAttribute("students",new students());
		return "addStudents";
	}
	
	@GetMapping(value="/addClasses")
	public String pageAddClasses(Model model)
	{
		model.addAttribute("classes",new classes());
		return "addClasses";
	}
	
	
	@RequestMapping(value="/listClasses")
	public String listClasses(Model model)
	{
		List<classes> lists = new ArrayList<classes>();
		lists = repoClas.findAll();
		model.addAttribute("classesData",lists);
		return "listClasses";
	}
	
	@RequestMapping(value="/listProg_class")
	public String listProg_class(Model model)
	{
		List<prog_class> lists = new ArrayList<prog_class>();
		lists = repoProg.findAll();
		model.addAttribute("progData",lists);
		return "listProg_class";
	}
	
	@RequestMapping(value="/listStudents")
	public String listStudents(Model model)
	{
		List<students> lists = new ArrayList<students>();
		lists = repoStu.findAll();
		model.addAttribute("studentsData",lists);
		return "listStudents";
	}
	
	@RequestMapping (value="/addStudentsDetail")
	public String addStudents(@ModelAttribute("students") students Students, BindingResult result, Model model)
	{
		
		if(result.hasErrors()){
			return "redirect:/addStudents";
		}
		else{
			repoStu.save(Students);
			model.addAttribute("successMsg", "Data Inserted Successfully");
			return "redirect:/listStudents";
		}
	}
	@RequestMapping (value="/addClassesDetail")
	public String addClasses(@ModelAttribute("classes") classes Classes, BindingResult result, Model model)
	{
		
		if(result.hasErrors()){
			return "redirect:/addStudents";
		}
		else{
			repoClas.save(Classes);
			model.addAttribute("successMsg", "Data Inserted Successfully");
			return "redirect:/listClasses";
		}
	}
	
	
	@RequestMapping("/updateStudent")
	public String updateEmployee(Model model, @RequestParam("stuId") int stuId) {
		students stu = repoStu.getOne(stuId);
		model.addAttribute("studentsDetails", stu);
		return "updateStudentsPage";
	}
	
	@RequestMapping("/updateStudentsDetail")
	public String updateEmployeeDetail(@ModelAttribute("employee") students Student, BindingResult result, Model model){
		
		if(result.hasErrors()){
			return "redirect:/listStudents";
		}
		else{
			System.out.println(Student);
			repoStu.save(Student);
			
			return "redirect:/listStudents";

		}
	}
	
	@RequestMapping("/updateClasses")
	public String updateClasses(Model model, @RequestParam("clasId") String clasId) {
		classes stu = repoClas.getOne(clasId);
		model.addAttribute("classesDetails", stu);
		return "updateClassesPage";
	}
	
	@RequestMapping("/updateClassesDetail")
	public String updateClassesDetail(@ModelAttribute("classes") classes Classes, BindingResult result, Model model){
		
		if(result.hasErrors()){
			return "redirect:/listClasses";
		}
		else{
			System.out.println(Classes);
			repoClas.save(Classes);
			
			return "redirect:/listClasses";

		}
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudents(Model model, @RequestParam("stuId") int stuId) {
		
		repoStu.deleteById(stuId);
		
		return "redirect:/listStudents";
	}
	
	@RequestMapping("/deleteClasses")
	public String deleteClasses(Model model, @RequestParam("clasId") String clasId) {
		
		repoClas.deleteById(clasId);
		
		return "redirect:/listClasses";
	}
	
	@RequestMapping(value="/addProg_class")
	public String addProg_class(Model model)
	{
		List<classes> lists = new ArrayList<classes>();
		lists = repoClas.findAll();
		model.addAttribute("prog_class",new prog_class());
		model.addAttribute("classesData",lists);
		return "addProg_class";
	}
	
	@RequestMapping (value="/addProg_classDetail")
	public String addProgs(@ModelAttribute("prog_class") prog_class Prog_class, BindingResult result, Model model)
	{
		
		if(result.hasErrors()){
			return "redirect:/listProg_class";
		}
		else{
			repoProg.save(Prog_class);
			model.addAttribute("successMsg", "Data Inserted Successfully");
			return "redirect:/listProg_class";
		}
	}
	
	
	
}
