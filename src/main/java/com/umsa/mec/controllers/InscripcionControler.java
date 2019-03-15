package com.umsa.mec.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.umsa.mec.models.dao.CupoDaoImpl;
import com.umsa.mec.models.dao.ICupoDao;
import com.umsa.mec.models.dao.IPersonaDao;
import com.umsa.mec.models.entity.Cupo;
import com.umsa.mec.models.entity.Persona;

@Controller
public class InscripcionControler {
	@Autowired
	private IPersonaDao personaDao;
	@Autowired
	private ICupoDao cupoDao;

	@PostMapping(value = "/formulariomecanica")
	public String formulariomecanica(Map<String, Object> m) {
		System.out.println("Entrando al formulario");
		/* ver la cantidad de inscritos */
		List<Persona> listapersonas = personaDao.findAll();
		Long cantidadInscritos = Long.valueOf(listapersonas.size());
		System.out.println("Cantidad   " + cantidadInscritos);
		/* ver cantidad de cupoas disponibles */
		Cupo cupo = cupoDao.getCupo(1L);
		System.out.println("EL CUPO ES  " + cupo.getCantidad());
		if (cantidadInscritos < Long.valueOf(cupo.getCantidad())) {
			m.put("haycupowasabi", "1");
		}else {
			m.put("haycupowasabi", "0");
		}
		Persona persona = new Persona();
		m.put("f", "Formulario de inscripción");
		m.put("persona", persona);
		return "formulariomecanica";
	}

	@PostMapping(value = "/inscripcion")
	public String inscripcion(Persona persona, Model m, final RedirectAttributes redirectAttributes) {
		personaDao.save(persona);
		m.addAttribute("resultado", "Inscripcion realizada");
		redirectAttributes.addFlashAttribute("resultado", "Inscripcion realizada");
		return "redirect:/index";
	}
}