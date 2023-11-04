package com.jsp.user.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.user.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity,Integer>{

	List<UserEntity> findByGender(String gender);

}
