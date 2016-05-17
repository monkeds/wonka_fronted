package com.monkeds.wonka_frontend.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.monkeds.wonka_fronted.entity.ItemGeneric;
import com.monkeds.wonka_fronted.entity.PersonCard;
import com.monkeds.wonka_fronted.entity.PersonCard.CivilState;
import com.monkeds.wonka_fronted.entity.Training;
import com.monkeds.wonka_fronted.entity.TrainingCategory;
import com.monkeds.wonka_fronted.entity.Training.TrainingState;
import com.monkeds.wonka_fronted.util.DateUtil;
import com.monkeds.wonka_fronted.util.ParserUtil;

public class PersonCardManager {
	
	private static List<PersonCard> listaPersonCard;
	
	public static String populate(){
		listaPersonCard = new ArrayList<>();
		List<ItemGeneric> contactItemList = new ArrayList<>();
		List<TrainingCategory> trainingCategoryItems = new ArrayList<>();
		List<Training> trainingItems = new ArrayList<>();
		
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
		
		//CARRERA
		trainingItems = new ArrayList<>();
		trainingItems.add(new Training("Instituto Superior Privado CIBERTEC",
										"Computación e Informática", TrainingState.CULMINADO, 
										null, DateUtil.stringToDate("01/01/2009", "dd/MM/yyyy"), 
										DateUtil.stringToDate("01/01/2013", "dd/MM/yyyy")));
		trainingItems.add(new Training("Instituto Superior Privado CIBERTEC",
				"Diplomado en Computación e Informática", TrainingState.TITULADO, 
				null, DateUtil.stringToDate("01/01/2013", "dd/MM/yyyy"), 
				DateUtil.stringToDate("01/09/2013", "dd/MM/yyyy")));
		trainingItems.add(new Training("Universidad Peruana de Ciencias Aplicadas UPC",
				"Ingeniería de Sistemas", TrainingState.APLAZADO, 
				null, DateUtil.stringToDate("01/01/2014", "dd/MM/yyyy"), 
				DateUtil.stringToDate("01/05/2014", "dd/MM/yyyy")));
		trainingCategoryItems.add(new TrainingCategory("CARRERA",trainingItems));
		
		//CURSOS
		trainingItems = new ArrayList<>();
		trainingItems.add(new Training("CIBERTEC DAT",
										"Java 7.0 Architect Application Developer", TrainingState.CULMINADO, 
										null, DateUtil.stringToDate("01/05/2015", "dd/MM/yyyy"), 
										DateUtil.stringToDate("01/11/2015", "dd/MM/yyyy")));
		trainingItems.add(new Training("BSGRUPO ORACLE ASSOCIATED",
				"Diplomado en Oracle Certified Expert: Java EE 6 Web Services Developer", TrainingState.CULMINADO, 
				null, DateUtil.stringToDate("01/01/2014", "dd/MM/yyyy"), 
				DateUtil.stringToDate("01/09/2014", "dd/MM/yyyy")));
		trainingItems.add(new Training("JOE DAYZ",
				"Curso Taller: Core Spring 4", TrainingState.CULMINADO, 
				null, DateUtil.stringToDate("01/01/2014", "dd/MM/yyyy"), 
				DateUtil.stringToDate("01/05/2014", "dd/MM/yyyy")));
		trainingCategoryItems.add(new TrainingCategory("CURSOS",trainingItems));
		
		//CERTIFICACIONES
		trainingItems = new ArrayList<>();
		trainingItems.add(new Training("PrimeFaces 3.5 Certification",
										"Java 7.0 Architect Application Developer", TrainingState.CULMINADO, 
										null, DateUtil.stringToDate("01/01/2014", "dd/MM/yyyy"), 
										DateUtil.stringToDate("01/021/2014", "dd/MM/yyyy")));
		trainingCategoryItems.add(new TrainingCategory("CERTIFICACIONES",trainingItems));
		
		
		
		edgar.setTrainingCategoryItems(trainingCategoryItems);
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
