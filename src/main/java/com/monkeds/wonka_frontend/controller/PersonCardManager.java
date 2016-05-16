package com.monkeds.wonka_frontend.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.monkeds.wonka_fronted.entity.ItemGeneric;
import com.monkeds.wonka_fronted.entity.PersonCard;
import com.monkeds.wonka_fronted.entity.PersonCard.CivilState;
import com.monkeds.wonka_fronted.util.DateUtil;
import com.monkeds.wonka_fronted.util.ParserUtil;

public class PersonCardManager {
	
	private static List<PersonCard> listaPersonCard;
	
	public static String populate(){
		listaPersonCard = new ArrayList<>();
		PersonCard matias = new PersonCard();
		matias.setId("mati");
		matias.setName("Matias");
		matias.setLastName("Medina Villegas");
		matias.setBirthdate(DateUtil.stringToDate("29/12/2014", "dd/MM/yyyy"));
		matias.setDni("12345678");
		matias.setPersonalIntroduction("Un niño inteligente, nombre, risueño. Me gusta abrir y "
				+ "cerrar puertas casi tanto como apagar y prender focos.");
		matias.setProfession("Peke jugueton");
		matias.setAddress("Mz A Lt 4 Santa Rosa Del Sauce");
		matias.setCivilState(CivilState.SOLTERO);
		matias.setCountry("Peru");
		matias.setCellphone("999232322");
		matias.setPhone("0050004");
		matias.setEmail("matias@hotmail.com");
		List<ItemGeneric> contactItemList = new ArrayList<>();
		contactItemList.add(new ItemGeneric("Facebook", "facebook.com/matias"));
		contactItemList.add(new ItemGeneric("Cuna", "Chiki toys"));
		matias.setContactItems(contactItemList);
		listaPersonCard.add(matias);
		
		
		PersonCard edgar = new PersonCard();
		edgar.setId("monkar");
		edgar.setName("Edgar");
		edgar.setLastName("Medina Vargas");
		edgar.setBirthdate(DateUtil.stringToDate("06/03/1990", "dd/MM/yyyy"));
		edgar.setDni("46326976");
		edgar.setPersonalIntroduction("Apasionado de las nuevas tecnologías. Fiel partidario del cumplimiento de estándares, "
				+ "buenas prácticas y desarrollo de código limpio. "
				+ "Me gusta aprender, innovar y plasmar soluciones en código.");
		edgar.setProfession("Analista Desarrollador de Sistemas");
		edgar.setAddress("Mz A Lt 4 Santa Rosa Del Sauce");
		edgar.setCivilState(CivilState.CONVIVIENTE);
		edgar.setCountry("Peru");
		edgar.setCellphone("955 260 648");
		edgar.setPhone("75 1544");
		edgar.setEmail("medient@hotmail.com");
		
		
		contactItemList = new ArrayList<>();
		contactItemList.add(new ItemGeneric("Facebook", "www.facebook.com/emedinavargas"));
		contactItemList.add(new ItemGeneric("Github", "https://github.com/monkar"));
		contactItemList.add(new ItemGeneric("DeviantArt", "https://deviantart.com/zshadow"));
		edgar.setContactItems(contactItemList);
		listaPersonCard.add(edgar);
		
		
		
		for(PersonCard person: listaPersonCard){
			ParserUtil.saveLikeXml(person.getId(),person, PersonCard.class);
		}
		
		return "EXITO";
	}
	
	public static PersonCard getPerson(String id){
		return (PersonCard) ParserUtil.toObject(new File("U:\\personCards\\"+id+".xml"),PersonCard.class);
//		for(PersonCard person: listaPersonCard){
//			if (id.equals(person.getId())) {
//				return person;
//			}
//		}
//		return null;
		
		
	}

}
