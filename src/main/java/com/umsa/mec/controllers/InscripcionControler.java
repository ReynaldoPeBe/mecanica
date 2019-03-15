package com.umsa.mec.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.umsa.mec.models.dao.IPersonaDao;
import com.umsa.mec.models.entity.Persona;

@Controller
public class InscripcionControler {
	@Autowired
	private IPersonaDao personaDao; 
	
	@PostMapping(value="/formulariomecanica")
	public String formulariomecanica(Map<String,Object> m) {
		Persona persona= new Persona();
		m.put("f", "Formulario de inscripción");
		m.put("persona", persona);
		return "formulariomecanica";
	}
	@PostMapping(value="/inscripcion")
	public String inscripcion (Persona persona, Model m, final RedirectAttributes redirectAttributes) {
		personaDao.save(persona);
		m.addAttribute("resultado","Inscripcion realizada");
		redirectAttributes.addFlashAttribute("resultado","Inscripcion realizada");
		
		return "redirect:/index";
	}
}