package com.postGre.bsHive.Acontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.postGre.bsHive.Adto.Onln_Lctr_List;
import com.postGre.bsHive.SeService.Paging;
import com.postGre.bsHive.SeService.SeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/se")
public class SeController {
	
	private final SeService ss;
	
	// LMS 리스트
	@GetMapping(value = "/onlnList") 
	public String onlnList(Onln_Lctr_List onln_Lctr_List, Model model) {
		// 글갯수
		int onlnTotal  = ss.onlnTotal();
		// 글리스트
		List<Onln_Lctr_List> onlnList = ss.onlnList(onln_Lctr_List);
		// 페이지
		Paging page = new Paging(onlnTotal, onln_Lctr_List.getCurrentPage());
		onln_Lctr_List.setStart(page.getStart());
		onln_Lctr_List.setEnd(page.getEnd());
		
		model.addAttribute("onlnTotal", onlnTotal);
		model.addAttribute("onlnList", onlnList);
	    model.addAttribute("page",page);
	    
	return "se/onlnList"; 
	}
	
	@GetMapping(value = "/onlnDtl") 
	public String onlnDtl(@RequestParam(value = "Lctr_Num") Integer Lctr_Num, Model model) {
		System.out.println("onlnDtl 작동");
		Onln_Lctr_List onlnDtl = ss.onlnDtl(Lctr_Num);
		
		model.addAttribute("onlnDtl", onlnDtl);
		
	return "se/onlnDtl"; 
	}
	
	@GetMapping(value = "/lctrView") 
	public String lctrView(HttpServletRequest request, HttpSession session) {

	    // 세션이 없거나 유효하지 않은 경우 새로운 세션 생성
	    if (session.getId() == null) {
	        session.invalidate();                         // 기존 세션을 무효화
	        session = request.getSession(true);         // 새로운 세션 생성
	        session.setMaxInactiveInterval(30 * 60);    // 30분 동안 활동이 없으면 세션 만료 설정
	        session.setAttribute("sessionTime", session.getMaxInactiveInterval());
	    }
	    
	    // 개인정보 예시
	    String userName = "송혜별"; // 예시로 사용할 사용자 이름
	    String userEmail = "test";  // 예시로 사용할 이메일

	    // 세션에 개인정보 저장
	    session.setAttribute("userName", userName);
	    session.setAttribute("userEmail", userEmail);
	    
	    return "se/lctrView"; // JSP 페이지로 이동
	}

	
	
}
