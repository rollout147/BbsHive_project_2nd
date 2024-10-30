package com.postGre.bsHive.Acontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.postGre.bsHive.Adto.Kh_PrdocList;
import com.postGre.bsHive.KhService.KhTableSerive;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {
		private final KhTableSerive khTableSerive;
	  
		@GetMapping(value = "/")
	    public String user_home(Model model) {
			
			log.info("KhController main() is called");
			
			// List<Paper> paperList = khTableSerive.getTestTableList();
			List<Kh_PrdocList> paperList	= khTableSerive.getPaperTableList();
			
			model.addAttribute("paperList", paperList);
			
	        return "main";
	    }

}
