package com.onestopsolution.modal;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="owner")
public class Owner {
	
	@Id
	private String aadhar;
	private String name;
	private String email;
	private String number;
	@OneToMany(targetEntity=Vehicle.class,cascade=CascadeType.ALL,mappedBy="owner")
	private Set<Vehicle> vehicles;
	
	
	
	public Set<Vehicle> getVehicles() {
		return vehicles;
	}

	public void setVehicles(Set<Vehicle> vehicles) {
		this.vehicles = vehicles;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	@Override
	public String toString() {
		return "Owner [aadhar=" + aadhar + ", name=" + name + ", email=" + email + ", number=" + number + ", vehicles="
				+ vehicles + "]";
	}
	
	

}
