package com.jsp.user.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsp.user.entity.UserEntity;
import com.jsp.user.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository repo;
	
	public UserEntity addUser(UserEntity user) {
		return repo.save(user);
	}

	public List<UserEntity> getUser() {
		return repo.findAll();
	}

	public UserEntity getUserById(int id) {
		return repo.findById(id).get();
	}

	public UserEntity updateDetails(UserEntity user) {
		return repo.save(user);
		
	}
	public void deleteUserById(int id) {
		repo.deleteById(id);
	}

	public List<UserEntity> getUserByGender(String gender) {
		 return repo.findByGender(gender);
	}
}
