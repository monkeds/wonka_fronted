package com.monkeds.wonka_fronted.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.monkeds.wonka_fronted.constants.Constants;
import com.monkeds.wonka_fronted.util.DateUtil;


@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class PersonCard implements Serializable{

	public enum CivilState {
		SOLTERO, CONVIVIENTE, CASADO, DIVORCIADO, VIUDO;
	}
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String dni;
	private String lastName;
	private String profession;
	private Date birthdate;
	private String personalIntroduction;
	private String cellphone;
	private String address;
	private CivilState civilState;
	private String country;
	private String phone;
	private String email;
	private String imagePortrait;
	//transient
	private String age;
	private String birthdateDesc;
	private String civilStateDesc;
	
	@XmlElementWrapper(name="contactItems")
	@XmlElement(name = "contactItem")
	private List<ItemGeneric> contactItems;
	
	@XmlElementWrapper(name="trainingCategoryItems")
	@XmlElement(name = "trainingCategoryItem")
	private List<TrainingCategory> trainingCategoryItems;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public String getPersonalIntroduction() {
		return personalIntroduction;
	}
	public void setPersonalIntroduction(String personalIntroduction) {
		this.personalIntroduction = personalIntroduction;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}


	public CivilState getCivilState() {
		return civilState;
	}
	public void setCivilState(CivilState civilState) {
		this.civilState = civilState;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImagePortrait() {
		return imagePortrait;
	}
	public void setImagePortrait(String imagePortrait) {
		this.imagePortrait = imagePortrait;
	}
	public String getAge() {
		if (getBirthdate() != null) {
			return String.valueOf(DateUtil.getAge(getBirthdate()));
		}
		return Constants.EMPTY_VALUE;
	}
	public String getBirthdateDesc() {
		if (getBirthdate() != null) {
			return DateUtil.dateToString(getBirthdate(), "d MMMM yyyy");
		}
		return Constants.EMPTY_VALUE;
	}
	public String getCivilStateDesc() {
		switch (getCivilState()) {
		case SOLTERO:
			return "SOLTERO";
		case CONVIVIENTE:
			return "CONVIVIENTE";
		case CASADO:
			return "CASADO";
		case DIVORCIADO:
			return "DIVORCIADO";
		case VIUDO:
			return "VIUDO";
		default:
			return Constants.EMPTY_VALUE;
		}
	}
	public List<ItemGeneric> getContactItems() {
		return contactItems;
	}
	public void setContactItems(List<ItemGeneric> contactItems) {
		this.contactItems = contactItems;
	}
	
	public List<TrainingCategory> getTrainingCategoryItems() {
		return trainingCategoryItems;
	}
	public void setTrainingCategoryItems(List<TrainingCategory> trainingCategoryItems) {
		this.trainingCategoryItems = trainingCategoryItems;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public void setBirthdateDesc(String birthdateDesc) {
		this.birthdateDesc = birthdateDesc;
	}
	public void setCivilStateDesc(String civilStateDesc) {
		this.civilStateDesc = civilStateDesc;
	}
	
	
	
}
