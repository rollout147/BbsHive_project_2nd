package com.postGre.bsHive.service.mn;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.postGre.bsHive.Amodel.Crans_Qitem;
import com.postGre.bsHive.dao.mn.MnDao;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MnServiceImpl implements MnService {
	
	private final MnDao mn;
	
	@Override
	public List<Crans_Qitem> selAll() {
		System.out.println("selAll start...");
		return mn.selAll();
	}
	
}
