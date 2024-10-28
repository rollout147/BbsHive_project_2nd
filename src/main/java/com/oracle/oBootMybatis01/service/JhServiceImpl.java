package com.oracle.oBootMybatis01.service;

import org.springframework.stereotype.Service;

import com.oracle.oBootMybatis01.dao.JhDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class JhServiceImpl implements JhService{

	private final JhDao jd;
}
