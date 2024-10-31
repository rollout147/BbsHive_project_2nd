package com.postGre.bsHive.JwService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.postGre.bsHive.Adto.Onln_Lctr_List;
import com.postGre.bsHive.JwDao.JwDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class JwServiceImpl implements JwService {
	private final JwDao jd;

	// 온라인 강의정보 불러오기 
	@Override
	public List<Onln_Lctr_List> listOnlnLct(Onln_Lctr_List al) {
		List<Onln_Lctr_List> AllLctrList = null;
		System.out.println("JwServiceImpl listOnlnLct Start...");

		AllLctrList = jd.listAllLctr(al);
		System.out.println("JwServiceImpl listOnlnLct AllLctrList.size->"+AllLctrList.size());
		
		return AllLctrList;
	}
	
}
