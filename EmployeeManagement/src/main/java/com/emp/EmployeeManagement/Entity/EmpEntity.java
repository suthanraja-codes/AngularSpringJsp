package com.emp.EmployeeManagement.Entity;

import javax.persistence.*;

@Entity
@Table(name = "employees")
public class EmpEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "emp_name")
    private String empName;
    @Column(name = "emp_age")
    private int empAge;
    @Column(name = "emp_gender")
    private String empGender;

    @Column(name = "emp_email")
    private String empEmail;

    @Column(name = "emp_destination")
    private String empDestination;

    @Column(name = "emp_salary")
    private int empSalary;

    @Column(name = "emp_branch")
    private String empBranch;

    public EmpEntity(){}

    public EmpEntity(String empName, int empAge, String empGender, String empEmail, String empDestination, int empSalary, String empBranch) {
        this.empName = empName;
        this.empAge = empAge;
        this.empGender = empGender;
        this.empEmail = empEmail;
        this.empDestination = empDestination;
        this.empSalary = empSalary;
        this.empBranch = empBranch;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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










