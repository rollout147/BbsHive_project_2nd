package com.postGre.bsHive.Acontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;

import com.postGre.bsHive.Adto.Kh_PrdocList;
import com.postGre.bsHive.KhService.KhTableSerive;



@Slf4j
@Controller
@RequiredArgsConstructor
public class KhController {
	
	private final KhTableSerive khTableSerive;

}
