package com.onestopsolution.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.onestopsolution.modal.Vehicle;
import org.springframework.data.repository.query.Param;


@Repository
public interface ExpiredVehicleRepository extends JpaRepository<Vehicle,String>{

	@Query("from Vehicle v where v.taxDate between :stDate and :enDate "
			+ " OR v.permitDate between :stDate and :enDate "
			+ " OR v.pollution_date between :stDate and :enDate "
			+ " OR v.fitnessDate between :stDate and :enDate "
			+ " OR v.insuranceDate between :stDate and :enDate ")
	List<Vehicle> getExpiredVehicle(@Param("stDate") Date stDate,@Param("enDate") Date enDate);
}
