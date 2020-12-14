package com.onestopsolution.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.onestopsolution.modal.Owner;

@Repository
public interface OwnerRepository extends JpaRepository<Owner, String>{
	
}


