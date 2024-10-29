package com.postGre.bsHive.KhDao;

import java.util.List;

import com.postGre.bsHive.ADto.Paper;

public interface KhTableDao {

	List<Paper>			getTestTableList();
	List<Paper> 		getPaperTableList();	
}
