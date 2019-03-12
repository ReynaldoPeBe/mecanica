package com.umsa.mec.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping(value="/index")
	public String index (Map<String, Object> m) {
		m.put("titulo", "Mecánica");
		return"index";
	}

}
