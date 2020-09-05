package com.demodigitalharbor.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class prog_class {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id_prog_class;
	public int getId_prog_class() {
		return id_prog_class;
	}
	public void setId_prog_class(int id_prog_class) {
		this.id_prog_class = id_prog_class;
	}
	public int getId_student() {
		return id_student;
	}
	public void setId_student(int id_student) {
		this.id_student = id_student;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Column
	private int id_student; 
	@Column
	private String code;
	

}
