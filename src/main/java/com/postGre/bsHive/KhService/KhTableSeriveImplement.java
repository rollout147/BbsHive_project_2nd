package com.postGre.bsHive.KhService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.postGre.bsHive.Adto.Paper;
import com.postGre.bsHive.KhDao.KhTableDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class KhTableSeriveImplement implements KhTableSerive {
	
	private final KhTableDao khTableDao;

	@Override
	public List<Paper> getTestTableList() {
		List<Paper> paperList = khTableDao.getTestTableList();
		return paperList;
	}

	@Override
	public List<Paper> getPaperTableList() {
		List<Paper> paperList = khTableDao.getPaperTableList();
		return paperList;
	}

}
