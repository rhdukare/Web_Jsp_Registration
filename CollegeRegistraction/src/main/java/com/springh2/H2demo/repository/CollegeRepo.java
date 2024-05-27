package com.springh2.H2demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.springh2.H2demo.model.College;

public interface CollegeRepo extends JpaRepository<College, Integer>{

}
