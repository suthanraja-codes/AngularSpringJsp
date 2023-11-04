package com.emp.EmployeeManagement.Repository;

import com.emp.EmployeeManagement.Entity.EmpEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmpRepository extends JpaRepository<EmpEntity,Long> {

    EmpEntity findAllById(Long id);

    @Query("SELECT e FROM EmpEntity e WHERE LOWER(e.empName)=LOWER(:empName)")
    List<EmpEntity> findByEmployeeName(@Param("empName") String empName);

    @Query("SELECT e FROM EmpEntity e WHERE e.empAge >= :empAge")
    List<EmpEntity> findByAgeGreaterThanEqual(@Param("empAge") int empAge);

    @Query("SELECT e FROM EmpEntity e WHERE e.empAge <= :empAge")
    List<EmpEntity> findByAgeLessThanEqual(int empAge);


    // Find By Gender
    @Query("SELECT p FROM EmpEntity p WHERE LOWER(p.empGender)=LOWER(:empGender)")
    List<EmpEntity> findByempGender(@Param("empGender") String empGender);

    // Find By Employee Destination
//    @Query(nativeQuery = true,value = "select * from employees HAVE LOWER(emp_destination) IN LOWER(:empDestination)")
    @Query("SELECT p FROM EmpEntity p WHERE LOWER(p.empDestination)=LOWER(:empDestination)")
    List<EmpEntity> findByempDestination(@Param("empDestination") String empDestination);

    @Query("SELECT e FROM EmpEntity e WHERE e.empSalary >= :empSalary")
    List<EmpEntity> findBySalaryGreaterThanEqual(int empSalary);

    @Query("SELECT e FROM EmpEntity e WHERE e.empSalary <= :empSalary")
    List<EmpEntity> findBySalaryLessThanEqual(int empSalary);

    @Query("SELECT e FROM EmpEntity e WHERE LOWER(e.empBranch)=LOWER(:empBranch)")
    List<EmpEntity> findByEmpBranch(@Param("empBranch") String empBranch);
}
