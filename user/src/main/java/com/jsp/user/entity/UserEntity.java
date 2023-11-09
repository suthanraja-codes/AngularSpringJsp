package com.jsp.user.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UserDetails")
public class UserEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="emp_name")
	private String empName;
	
	@Column(name="emp_age")
	private int empAge;
	
	@Column(name="emp_Gender")
	private String empGender;
	
	@Column(name="emp_email")
	private String empEmail;
	
	@Column(name="emp_destination")
	private String empDestination;
	
	@Column(name="emp_salary")
	private int empSalary;
	
	@Column(name="emp_branch")
	private String empBranch;
	
	public UserEntity() {
		super();
	}
	
	public UserEntity(String name,int age,String gender, String email, String destination,int salary,String branch) {
		this.empName = name;
		this.empAge = age;
		this.empGender = gender;
		this.empEmail = email;
		this.empDestination = destination;
		this.empSalary = salary;
		this.empBranch = branch;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getEmpAge() {
		return empAge;
	}

	public void setEmpAge(int empAge) {
		this.empAge = empAge;
	}

	public String getEmpGender() {
		return empGender;
	}

	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpDestination() {
		return empDestination;
	}

	public void setEmpDestination(String empDestination) {
		this.empDestination = empDestination;
	}

	public int getEmpSalary() {
		return empSalary;
	}

	public void setEmpSalary(int empSalary) {
		this.empSalary = empSalary;
	}

	public String getEmpBranch() {
		return empBranch;
	}

	public void setEmpBranch(String empBranch) {
		this.empBranch = empBranch;
	}


	
	
}
	
	