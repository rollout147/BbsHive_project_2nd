package com.postGre.bsHive.SeService;

import java.util.List;

import com.postGre.bsHive.Adto.Onln_Lctr_List;

public interface SeService {

	int onlnTotal();
	List<Onln_Lctr_List> onlnList(Onln_Lctr_List onln_Lctr_List);
	
	Onln_Lctr_List onlnDtl(Integer lctr_Num);
	








}
