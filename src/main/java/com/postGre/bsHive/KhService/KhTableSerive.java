package com.postGre.bsHive.KhService;

import java.util.List;

import com.postGre.bsHive.Adto.Kh_PrdocList;

public interface KhTableSerive {

	List<Kh_PrdocList> 		getTestTableList();
	List<Kh_PrdocList>			getPaperTableList();
}
