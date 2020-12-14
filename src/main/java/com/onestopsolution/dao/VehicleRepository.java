package com.onestopsolution.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.onestopsolution.modal.Vehicle;

@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, String>{
	
}


