package com.postGre.bsHive.KhDao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.postGre.bsHive.Adto.Kh_PrdocList;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class KhTableDaoImplement implements KhTableDao {
	private final SqlSession session;
	
	public List<Kh_PrdocList> getTestTableList(){
		List<Kh_PrdocList> paperList = null;
		try {
			paperList = session.selectList("com.postGre.bsHive.kh_TableMapper.getPaperTableList");
			System.out.println("KhTableDaoImplement getTestTableList() paperList -> " + paperList);
		} catch (Exception e) {
			System.out.println("KhTableDaoImplement getTestTableList() e.getMessage() -> " + e.getMessage());
		}
		
		return paperList;
	}

	@Override
	public List<Kh_PrdocList> getPaperTableList() {
		List<Kh_PrdocList> paperList = null;
		try {
			paperList = session.selectList("com.postGre.bsHive.kh_TableMapper.getPaperTableList");
			System.out.println("KhTableDaoImplement getPaperTableList() paperList -> " + paperList);
		} catch (Exception e) {
			System.out.println("KhTableDaoImplement getPaperTableList() e.getMessage() -> " + e.getMessage());
		}
		
		return paperList;
	}

}
