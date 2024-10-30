package com.postGre.bsHive.KhDao;

import java.util.List;

import com.postGre.bsHive.Adto.Kh_PrdocList;


public interface KhTableDao {

	List<Kh_PrdocList>		getTestTableList();
	List<Kh_PrdocList> 		getPaperTableList();	
}
