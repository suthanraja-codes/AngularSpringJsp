package com.emp.EmployeeManagement.Controller;

import com.emp.EmployeeManagement.Entity.EmpEntity;
import com.emp.EmployeeManagement.Service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/")
public class Empcontroller {

    @Autowired
    private EmpService empService;

    // Value Getting
    @GetMapping("/employees")
    public List<EmpEntity> getAllEmployees(){
        return empService.getEmployees();
    }

    // Value Getting Using Id
    @GetMapping("/employees/{id}")
    public EmpEntity getEmployee(@PathVariable("id") long id){
        return empService.getEmployeeId(id);
    }

    @GetMapping("/employees/name/{empName}")
    public List<EmpEntity> findByEmployeeName(@PathVariable("empName") String empName){
        return empService.findByEmployeeName(empName);
    }

    // Value Getting Using Gender
    @GetMapping("/employees/gender/{empGender}")
    public List<EmpEntity> findByempGender(@PathVariable("empGender") String empGender){
        return empService.findByempGender(empGender);
    }

    // Value Getting Using Job_Desc
    @GetMapping("/employees/jobdesc/{empDestination}")
    public List<EmpEntity> findByempDestination(@PathVariable String empDestination){
        return empService.findByempDestination(empDestination);
    }

    //Above Value Getting Using Age
    @GetMapping("/employees/aboveage/{empAge}")
    public List<EmpEntity> findByAboveAge(@PathVariable int empAge){
        return empService.findByAboveAge(empAge);
    }

    // Below Value Getting Using Age
    @GetMapping("/employees/belowage/{empAge}")
    public List<EmpEntity> findByBelowAge(@PathVariable int empAge){
        return empService.findByBelowAge(empAge);
    }

    // Salary Getting Above Using empSalary
    @GetMapping("/employees/abovesalary/{empSalary}")
    public List<EmpEntity> findByAboveEmpSalary(@PathVariable int empSalary){
        return empService.findByAboveSalary(empSalary);
    }

    // Salary Getting Below Using empSalary
    @GetMapping("/employees/belowsalary/{empSalary}")
    public List<EmpEntity> findByBelowSalary(@PathVariable int empSalary){return empService.findByBelowSalary(empSalary);}

    // Employee Getting Branch
    @GetMapping("/employees/branch/{empBranch}")
    public List<EmpEntity> findByBranch(@PathVariable String empBranch){
        return empService.findByBranch(empBranch);
    }

    // New Value Adding
    @PostMapping("/employees")
    public EmpEntity addEmployee(@RequestBody EmpEntity empEn){
        return empService.addEmployee(empEn);
    }


    // Value Deleting
    @DeleteMapping("/employees/{id}")
    public ResponseEntity<Map<String,Boolean>> delEmployee(@PathVariable Long id){
        return empService.delEmployee(id);
    }


//    Modifying Values
    
    @PutMapping("/employees/{id}")
    public ResponseEntity<EmpEntity> modifyEmp(@PathVariable Long id, @RequestBody EmpEntity newEmp){
        return empService.modifyEmp(id,newEmp);
    }

}
