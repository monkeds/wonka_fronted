package com.monkeds.wonka_frontend.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.monkeds.wonka_fronted.entity.PersonCard;
import com.monkeds.wonka_fronted.exception.ResourceNotFoundException;
import com.monkeds.wonka_fronted.util.ParserUtil;

@Controller("personCardController")
public class PersonCardController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView init(){
//		ModelAndView mav = new ModelAndView(index());
//		mav.addObject("personCard", PersonCardManager.getPerson("mati"));
//		return mav;
		System.out.println("poblando "+PersonCardManager.populate());
		return new ModelAndView("404");
	}
	
	
	@RequestMapping(value="/{id}", method = RequestMethod.GET)
	public ModelAndView init(@PathVariable("id") String id, Model model){
		ModelAndView mav = new ModelAndView("perfil");
		PersonCard person = PersonCardManager.getPerson(id);
		
		if(person==null){
			throw new ResourceNotFoundException();
		}
		System.out.println(person.toString());
		mav.addObject("personCard", person);
//		System.out.println(ParserUtil.toJson(person));
//		ParserUtil.toXml(person, PersonCard.class);
		
//		System.out.println("RESULTADO: "+ParserUtil.toObject(new File("U:\\personCard.xml"), PersonCard.class));
		
		return mav;
	}
	 
	@RequestMapping(value="/{id}/index", method = RequestMethod.GET)
	public ModelAndView index(@PathVariable("id") String id, Model model){
		ModelAndView mav = new ModelAndView("perfil");
		PersonCard person = PersonCardManager.getPerson(id);
		if(person==null){
			throw new ResourceNotFoundException();
		}
		mav.addObject("personCard", person);
		return mav;
	}
	
	
	
	
	@RequestMapping(value="/{id}/perfil", method = RequestMethod.GET)
	public ModelAndView perfil(@PathVariable("id") String id, Model model){
		System.out.println("ingreso a perfil de "+ id);
		ModelAndView mav = new ModelAndView("perfil");
		PersonCard person = PersonCardManager.getPerson(id);
		if(person==null){
			throw new ResourceNotFoundException();
		}
		mav.addObject("personCard", person);
		return mav;
	}
	
	@RequestMapping(value="/{id}/formacion", method = RequestMethod.GET)
	public ModelAndView formacion(@PathVariable("id") String id, Model model){
		ModelAndView mav = new ModelAndView("formacion");
		PersonCard person = PersonCardManager.getPerson(id);
		if(person==null){
			throw new ResourceNotFoundException();
		}
		mav.addObject("personCard", person);
		return mav;
	}
	
	@RequestMapping(value="/{id}/experiencia", method = RequestMethod.GET)
	public ModelAndView experiencia(@PathVariable("id") String id, Model model){
		ModelAndView mav = new ModelAndView("experiencia");
		PersonCard person = PersonCardManager.getPerson(id);
		if(person==null){
			throw new ResourceNotFoundException();
		}
		mav.addObject("personCard", person);
		return mav;
	}
	@RequestMapping(value="/{id}/conocimientos", method = RequestMethod.GET)
	public ModelAndView conocimientos(@PathVariable("id") String id, Model model){
		ModelAndView mav = new ModelAndView("conocimientos");
		PersonCard person = PersonCardManager.getPerson(id);
		if(person==null){
			throw new ResourceNotFoundException();
		}
		mav.addObject("personCard", person);
		return mav;
	}
}
