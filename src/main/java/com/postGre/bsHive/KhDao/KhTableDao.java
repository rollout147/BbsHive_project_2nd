package com.postGre.bsHive.KhDao;

import java.util.List;

import com.postGre.bsHive.Adto.Paper;

public interface KhTableDao {

	List<Paper>			getTestTableList();
	List<Paper> 		getPaperTableList();	
}
