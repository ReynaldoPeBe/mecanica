package com.umsa.mec.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index (Map<String, Object> m) {
		m.put("titulo", "Electromecánica");
		return"index";
	}
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String index3 (Map<String, Object> m) {
		m.put("titulo", "Electromecánica");
		return"index";
	}

}
