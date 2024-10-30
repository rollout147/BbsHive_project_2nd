package com.postGre.bsHive.Acontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.postGre.bsHive.Adto.Kh_PrdocList;
import com.postGre.bsHive.KhService.KhTableSerive;



@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/kh/admin")
public class KhController {
	
	private final KhTableSerive khTableSerive;
	
	
	@GetMapping(value = "/prdocList")
    public String user_home(Model model) {
		log.info("KhController main() is called");
		
		// List<Paper> paperList = khTableSerive.getTestTableList();
		List<Kh_PrdocList> paperList	= khTableSerive.getPaperTableList();
		
		model.addAttribute("paperList", paperList);
		
        return "kh/adminPrdocList";
    }
	
	
	

}
