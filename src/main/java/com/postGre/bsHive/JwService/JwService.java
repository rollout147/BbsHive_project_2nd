package com.postGre.bsHive.JwService;

import java.util.List;

import com.postGre.bsHive.Adto.Onln_Lctr_List;

public interface JwService {

	// 온라인 강의정보 불러오기 
	List<Onln_Lctr_List> listOnlnLct(Onln_Lctr_List al);
}
