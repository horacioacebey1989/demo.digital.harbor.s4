package com.demodigitalharbor.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demodigitalharbor.model.students;

public interface IStudentsRepo extends JpaRepository<students, Integer> {

}
