package com.monkeds.wonka_fronted.util;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import com.google.gson.Gson;

public class ParserUtil {

	
	static final Gson gson = new Gson();
	
	
	public static String toJson(Object object){
		return gson.toJson(object);
	}
	
	public static void toXml(Object object,Class clazz){
		JAXBContext jaxbContext;
		try {
			jaxbContext = JAXBContext.newInstance(clazz);
			Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
			jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			jaxbMarshaller.marshal(object, System.out);
//			jaxbMarshaller.marshal(object, new File("U:\\personCards\\"++".xml"));
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void saveLikeXml(String id,Object object,Class clazz){
		JAXBContext jaxbContext;
		try {
			jaxbContext = JAXBContext.newInstance(clazz);
			Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
			jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			jaxbMarshaller.marshal(object, System.out);
			jaxbMarshaller.marshal(object, new File("U:\\personCards\\"+id+".xml"));
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static Object toObject(File xmlFile,Class clazz){
		Object object = null;
		try {
			JAXBContext jc = JAXBContext.newInstance(clazz);
		    Unmarshaller u = jc.createUnmarshaller();
		    object = u.unmarshal(xmlFile);
		} catch (JAXBException e) {
			e.printStackTrace();
		}
		return object;
	}
}
