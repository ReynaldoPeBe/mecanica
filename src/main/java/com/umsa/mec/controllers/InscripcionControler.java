package com.umsa.mec.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class InscripcionControler {
	
	@PostMapping(value="/formulariomecanica")
	public String formulariomecanica(Map<String,Object> m) {
		m.put("f", "Formulario de inscripción");
		return "formulariomecanica";
	}
}
