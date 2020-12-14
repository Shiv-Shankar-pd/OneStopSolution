package com.onestopsolution.modal;

import java.sql.Date;
import java.util.Calendar;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.engine.internal.Cascade;

@Entity
@Table(name="vehicle")
public class Vehicle {
@Id
private String vehicle_no;
private String aadhar;
@Column(name="tax_date")
private Date taxDate;
@Column(name="permit_date")
private Date permitDate;
@Column(name="pollution_date")
private Date pollution_date;
@Column(name="fitness_date")
private Date fitnessDate;
@Column(name="insurance_date")
private Date insuranceDate;
private String note;

@ManyToOne(targetEntity=Owner.class,cascade=CascadeType.ALL,fetch=FetchType.LAZY)
@NotFound(
        action = NotFoundAction.IGNORE)
@JoinColumn(name="aadhar",referencedColumnName="aadhar",insertable=false,updatable=false)
private Owner owner;


public String getVehicle_no() {
	return vehicle_no;
}
public void setVehicle_no(String vehicle_no) {
	this.vehicle_no = vehicle_no;
}
public String getAadhar() {
	return aadhar;
}
public void setAadhar(String aadhar) {
	this.aadhar = aadhar;
}
public Date getTaxDate() {
	return taxDate;
}
public void setTaxDate(Date taxDate) {
	this.taxDate = taxDate;
}
public Date getPermitDate() {
	return permitDate;
}
public void setPermitDate(Date permitDate) {
	this.permitDate = permitDate;
}
public Date getPollution_date() {
	return pollution_date;
}
public void setPollution_date(Date pollution_date) {
	this.pollution_date = pollution_date;
}
public Owner getOwner() {
	return owner;
}
public void setOwner(Owner owner) {
	this.owner = owner;
}

public Date getFitnessDate() {
	return fitnessDate;
}
public void setFitnessDate(Date fitnessDate) {
	this.fitnessDate = fitnessDate;
}
public Date getInsuranceDate() {
	return insuranceDate;
}
public void setInsuranceDate(Date insuranceDate) {
	this.insuranceDate = insuranceDate;
}
public String getNote() {
	return this.note;
}
public void setNote(String note) {
	this.note=note;
}

public String getTaxCss() {
	System.out.println("hiii::"+getCSSClass(this.taxDate));
	return getCSSClass(this.taxDate);
}
public static String getCSSClass(Date d) {
	Calendar c=Calendar.getInstance();
	c.add(Calendar.DATE, 5);
	if(curent(d) || d.after(new java.util.Date()) && d.before(new Date(c.getTimeInMillis())))
		return "to_expired";
else if(d.before(new Date(Calendar.getInstance().getTimeInMillis())))
		return "expired";
	else 
		return "black";
}
public static boolean curent(Date e) {
	Date d=new Date(Calendar.getInstance().getTimeInMillis());
	return e.getDate()==d.getDate() && e.getDay()==d.getDay() && e.getMonth()==d.getMonth();
}
/*
 * @Override public String toString() { return "Vehicle [vehicle_no=" +
 * vehicle_no + ", aadhar=" + aadhar + ", taxDate=" + taxDate + ", permitDate="
 * + permitDate + ", pollution_date=" + pollution_date + ", fitnessDate=" +
 * fitnessDate + ", insuranceDate=" + insuranceDate + ", owner=" + owner + "]";
 * }
 */
}
