package com.springh2.H2demo.controller;

import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springh2.H2demo.model.College;
import com.springh2.H2demo.service.CollegeService;

@Controller
public class CollegeController {
	
	@Autowired
	private CollegeService collegeService;
	
	@RequestMapping("/")
	public String show()
	{
		return "home";
	}
	
	//Get Method
	@RequestMapping("/alldetails")
	public ResponseEntity<List<College>> getallDetails()
	{
		System.out.println("we are inside get all method");
		return ResponseEntity.ok(collegeService.getAllDetail());
	}
	
	//Post Method
	@RequestMapping(method = RequestMethod.POST , value = "/register_api")
	public ModelAndView postDetails(@RequestBody College cl) throws Exception
	{
		System.out.println("it's working..... guys");
		collegeService.postMethod(cl);
		
		ModelMap model= new ModelMap();
		model.addAttribute("id", cl.getId());
		model.addAttribute("name", cl.getName());
		model.addAttribute("number", cl.getNumber());
		model.addAttribute("age", cl.getAge());
		model.addAttribute("address", cl.getAddress());
		model.addAttribute("email", cl.getEmail());
		
		ModelAndView mv=new ModelAndView("confirm");
		mv.addObject("studentobj", model);
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.POST , value = "/register")
	public ModelAndView postDetailsWeb(College cl) throws Exception
	{
		System.out.println("it's working..... guys");
		collegeService.postMethod(cl);
		
		ModelMap model= new ModelMap();
		model.addAttribute("id", cl.getId());
		model.addAttribute("name", cl.getName());
		model.addAttribute("number", cl.getNumber());
		model.addAttribute("age", cl.getAge());
		model.addAttribute("address", cl.getAddress());
		model.addAttribute("email", cl.getEmail());
		
		ModelAndView mv=new ModelAndView("confirm");
		mv.addObject("studentobj", model);
		return mv;
	}
	
	@RequestMapping("/update")
	public String update()
	{
		return "update";
	}
	
	
	@RequestMapping("/update-success")
	public String updateDetails(College cl, Integer id) throws Exception
	{
		return collegeService.updateDetail(cl,id);
	}

	
}
