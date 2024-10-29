package com.postGre.bsHive.Acontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.postGre.bsHive.SeService.SeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping(value="/se")
public class seController {
	
	private final SeService ss;
	
	@GetMapping(value = "/onln_form")
	public String all() {
		
		return "se/onln_form";
	}
	
}
