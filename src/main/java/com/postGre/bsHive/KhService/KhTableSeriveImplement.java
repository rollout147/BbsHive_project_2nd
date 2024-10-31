package com.postGre.bsHive.KhService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.postGre.bsHive.Adto.Kh_PrdocList;
import com.postGre.bsHive.KhDao.KhTableDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class KhTableSeriveImplement implements KhTableSerive {
	
	private final KhTableDao khTableDao;

	@Override
	public List<Kh_PrdocList> getTestTableList() {
		List<Kh_PrdocList> paperList = khTableDao.getTestTableList();
		return paperList;
	}

	@Override
	public List<Kh_PrdocList> getPaperTableList() {
		List<Kh_PrdocList> paperList = khTableDao.getPaperTableList();
		return paperList;
	}

}
