package com.springh2.H2demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springh2.H2demo.model.College;
import com.springh2.H2demo.repository.CollegeRepo;

@Service
public class CollegeService {

	@Autowired
	private CollegeRepo collegeRepo;

	
	//get all....
	public List<College> getAllDetail() {
		System.out.println("inside service get all method");
		List<College> colleges = new ArrayList<>();
		collegeRepo.findAll().forEach(colleges::add);
		return colleges;
	}
	
	//post.....
	public void postMethod(College cl) throws Exception {

		if (Pattern.matches("[a-zA-Z]+", cl.getName())) {
			System.out.println("Name is valid");
		} else {
			throw new Exception();
		}

		if (Pattern.matches("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$", cl.getEmail())) {
			System.out.println("Email is valid");
		} else {
			throw new Exception();
		}
		collegeRepo.save(cl);
	}

	//update....
	public String updateDetail(College cl, Integer id) throws Exception {
		if (collegeRepo.findById(id).isPresent()) {
			System.out.println("Student is present");
			collegeRepo.save(cl);
			return "update";
		} else {
			System.out.println("error");
			throw new Exception();
		}
	}

}
