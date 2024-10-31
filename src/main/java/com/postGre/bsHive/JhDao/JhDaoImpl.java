package com.postGre.bsHive.JhDao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.postGre.bsHive.Adto.User_Table;
import com.postGre.bsHive.Amodel.Lctr_Aply;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class JhDaoImpl implements JhDao {
	
	private final SqlSession session;
	
	@Override
	public User_Table login(String eml, String pswd, String mbr_se) {
		
		 User_Table user_table = new User_Table();
	     
			try {
				user_table.setEml(eml);
				user_table.setPswd(pswd);
				user_table.setMbr_se(mbr_se);

				user_table = session.selectOne("com.postGre.bsHive.jh_Mapper.login", user_table);
				System.out.println("로그인정보"+user_table.getEml()+user_table.getPswd()+user_table.getMbr_se());
			} catch (Exception e) {
				System.out.println("JmDaoImpl.login() ERROR !!!!!!!!!!!!!!!! " + e.getMessage());
			}
			return user_table;
}

	@Override
	public List<Lctr_Aply> myClass(int unq_num) {
		List<Lctr_Aply> myClass = null;
		try {
			myClass = session.selectList("com.postGre.bsHive.jh_Mapper.myClass",unq_num);
		} catch (Exception e) {
			System.out.println("msDao cellCar error->"+e.getMessage());
		}
		return myClass;
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
