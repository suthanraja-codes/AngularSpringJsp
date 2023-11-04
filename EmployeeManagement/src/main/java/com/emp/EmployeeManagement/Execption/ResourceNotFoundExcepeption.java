package com.emp.EmployeeManagement.Execption;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class ResourceNotFoundExcepeption extends RuntimeException{

    private static final long serialVersionUID = 1L;

    public ResourceNotFoundExcepeption (String message){ super(message); }
}
