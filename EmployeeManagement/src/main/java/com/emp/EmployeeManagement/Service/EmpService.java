package com.emp.EmployeeManagement.Service;

import com.emp.EmployeeManagement.Entity.EmpEntity;
import com.emp.EmployeeManagement.Execption.ResourceNotFoundExcepeption;
import com.emp.EmployeeManagement.Repository.EmpRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmpService {

    @Autowired
    private EmpRepository empRepository;


    //Get All Employees
    public List<EmpEntity> getEmployees(){

        List<EmpEntity> empList = empRepository.findAll();

        return empList;
    }

    // Value Getting Using Id
    public EmpEntity getEmployeeId(Long id){
        return empRepository.findAllById(id);
    }

    // Value Getting Using EmployeeName
    public List<EmpEntity> findByEmployeeName(String empName){
        return empRepository.findByEmployeeName(empName);
    }

    // Value Getting Using Gender
    public List<EmpEntity> findByempGender (String empGender){
        return empRepository.findByempGender(empGender);
    }

    // Value Getting Using Job_desc

    public List<EmpEntity> findByempDestination(String empDestination){
        return empRepository.findByempDestination(empDestination);
    }


    // Value Getting By Age
    public List<EmpEntity> findByAboveAge(int empAge){
        return empRepository.findByAgeGreaterThanEqual(empAge);
    }

    // Below Value Getting By Age
    public List<EmpEntity> findByBelowAge(int empAge){
        return empRepository.findByAgeLessThanEqual(empAge);
    }



    // Getting Above Salary
    public List<EmpEntity> findByAboveSalary(int empSalary){
        return empRepository.findBySalaryGreaterThanEqual(empSalary);
    }

    //Below Value Getting Salary

    public List<EmpEntity> findByBelowSalary(int empSalary){
        return empRepository.findBySalaryLessThanEqual(empSalary);
    }

    public List<EmpEntity> findByBranch(String empBranch){
        return empRepository.findByEmpBranch(empBranch);
    }

    //Add New Employees
    public EmpEntity addEmployee(EmpEntity empEn){
        return empRepository.save(empEn);
    }


    // Modifying Values
    public ResponseEntity<EmpEntity> modifyEmp(Long id, EmpEntity newEmp){
        EmpEntity empEntity = empRepository.findById(id).orElseThrow(()->new ResourceAccessException("Employee Not Exists With Id No : "+id));

        empEntity.setEmpName(newEmp.getEmpName());
        empEntity.setEmpAge(newEmp.getEmpAge());
        empEntity.setEmpGender(newEmp.getEmpGender());
        empEntity.setEmpEmail(newEmp.getEmpEmail());
        empEntity.setEmpDestination(newEmp.getEmpDestination());
        empEntity.setEmpSalary(newEmp.getEmpSalary());
        empEntity.setEmpBranch(newEmp.getEmpBranch());

        EmpEntity updatedEmployee = empRepository.save(empEntity);
        return ResponseEntity.ok(updatedEmployee);
    }


    // Value Delete Using Id
    public ResponseEntity<Map<String,Boolean>> delEmployee(Long id){
        EmpEntity employee = empRepository.findById(id).orElseThrow(()->new ResourceNotFoundExcepeption("Employee Not Found For This "+id));

        empRepository.delete(employee);

        Map<String,Boolean> response = new HashMap<>();
        response.put("deleted",Boolean.TRUE);
        return  ResponseEntity.ok(response);
    }





}
