package com.monkeds.wonka_fronted.entity;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class TrainingCategory {
	
	public TrainingCategory(){
		
	}
	
	
	
	public TrainingCategory(String name, List<Training> trainingItems) {
		super();
		this.name = name;
		this.trainingItems = trainingItems;
	}



	private String name;	
	@XmlElementWrapper(name="trainingItems")
	@XmlElement(name = "trainingItem")
	private List<Training> trainingItems;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Training> getTrainingItems() {
		return trainingItems;
	}
	public void setTrainingItems(List<Training> trainingItems) {
		this.trainingItems = trainingItems;
	}
	
	

}
