 package com.postGre.bsHive.SeDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.postGre.bsHive.Adto.Onln_Lctr_List;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class SeDaoImpl implements SeDao {
	
	private final SqlSession session;
	
	@Override
	public int onlnTotal() {
		int onlnTotal = 0;
		System.out.println("SeDaoImpl onlnTotal Start");
		
		try {
			onlnTotal = session.selectOne("com.postGre.bsHive.Mapper.seMapper.onlnTotal");
			System.out.println("SeDaoImpl onlnTotal ok "+onlnTotal);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return onlnTotal;
	}
	
	@Override
	public List<Onln_Lctr_List> onlnList(Onln_Lctr_List onln_Lctr_List) {
		List<Onln_Lctr_List> onlnList = null;
		System.out.println("SeDaoImpl onlnList Start");
		
		try {
			onlnList = session.selectList("onlnList", onln_Lctr_List);
			System.out.println("SeDaoImpl onlnList " + onlnList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return onlnList;
	}

	@Override
	public Onln_Lctr_List onlnDtl(Integer lctrNum) {
	    Onln_Lctr_List result = null;
	    try {
	        Map<String, Object> params = new HashMap<>();
	        params.put("LCTR_NUM", lctrNum);
	        result = session.selectOne("onlnDtl", params);
	        System.out.println("SeDaoImpl onlnList " + result);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return result;
	}
	
	

}
