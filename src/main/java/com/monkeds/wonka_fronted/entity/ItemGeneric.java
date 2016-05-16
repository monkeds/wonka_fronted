package com.monkeds.wonka_fronted.entity;

import java.io.Serializable;


public class ItemGeneric implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String value;
	
	public ItemGeneric(){
	}
	public ItemGeneric(String name, String value){
		this.name = name;
		this.value = value;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}
