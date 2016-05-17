package com.monkeds.wonka_fronted.entity;

import java.io.Serializable;
import java.util.Date;

public class Training implements Serializable{

	
	public enum TrainingState {
		CURSANDO, CULMINADO, APLAZADO, TITULADO
	}
	
	public enum MeritState {
		DECIMO_SUPERIOR, QUINTO_SUPERIOR, TERCIO_SUPERIOR
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String institute;
	private String name;
	private TrainingState state;
	private MeritState merit;
	private Date startDate;
	private Date endDate;
	
	
	
	
	
	public Training(String institute, String name, TrainingState state, MeritState merit, Date startDate,
			Date endDate) {
		this.institute = institute;
		this.name = name;
		this.state = state;
		this.merit = merit;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	public Training(){
		
	}
	
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public TrainingState getState() {
		return state;
	}
	public void setState(TrainingState state) {
		this.state = state;
	}
	public MeritState getMerit() {
		return merit;
	}
	public void setMerit(MeritState merit) {
		this.merit = merit;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	

}
