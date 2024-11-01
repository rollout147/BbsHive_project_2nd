package com.postGre.bsHive.KhService;

import java.util.List;

import com.postGre.bsHive.Adto.Kh_EmpList;
import com.postGre.bsHive.Adto.Kh_LctrList;
import com.postGre.bsHive.Adto.Kh_PrdocList;
import com.postGre.bsHive.Adto.Kh_StdntList;
import com.postGre.bsHive.Amodel.Lgn;

public interface KhTableSerive {

	List<Kh_PrdocList> 		getTestTableList();
	
	// 삭제여부 변경
	int 					updateLgnDelYn(Lgn lgn);
	
	// Student list
	int 					getTotStdntList(Kh_StdntList stList);
	List<Kh_StdntList> 		getStdntList(Kh_StdntList stList);
		
	// EMP List(Professor & employee)
	int 					getTotEmpList(Kh_EmpList eList);
	List<Kh_EmpList> 		getEmpList(Kh_EmpList eList);
	

	// PRDOC List
	List<Kh_PrdocList>		getPrdocList(Kh_PrdocList prList);
	int 					getTotPrdocList(Kh_PrdocList prList);
	
	
	// Lecture List
	
	int 					getTotLctrList(Kh_LctrList lcList);
	List<Kh_LctrList> 		getLctrList(Kh_LctrList lcList);
	
	
}
