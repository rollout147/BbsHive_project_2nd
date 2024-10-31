package com.postGre.bsHive.JwDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.postGre.bsHive.Adto.Onln_Lctr_List;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class JwDaoImpl implements JwDao {
	private final SqlSession session;

	// 온라인 강의정보 불러오기 
	@Override
	public List<Onln_Lctr_List> listAllLctr(Onln_Lctr_List al) {
		List<Onln_Lctr_List> listResult = null;
		System.out.println("JwDaoImpl listAllLctr Start...");
		
		try {
			listResult = session.selectList("selectAllLctr", al);
			System.out.println("JwDaoImpl listAllLctr listResult.size()->"+listResult.size());
					
		} catch (Exception e) {
			System.out.println("JwDaoImpl listAllLctr Exception->"+e.getMessage());
		}
		
		return listResult;
	}

	
}
