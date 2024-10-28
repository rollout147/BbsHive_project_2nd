package com.oracle.oBootMybatis01.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.oracle.oBootMybatis01.domain.Member;

import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;


@Repository
@RequiredArgsConstructor
public class MemberJpaRepositoryImpl implements MemberJpaRepository {

	private final EntityManager em;
	
	@Override
	public Member save(Member member) {
		System.out.println("MemberJpaRepositoryImpl save start");
		em.persist(member);
		return null;
	}

	@Override
	public List<Member> findAll() {
		System.out.println("MemberJpaRepositoryImpl findAll start");
		List<Member> listMember = em.createQuery("select m from Member m", Member.class)
				                    .getResultList();
		return listMember;
	}

	@Override
	public Optional<Member> findById(Long memberId) {
		System.out.println("MemberJpaRepositoryImpl findById start");
		Member member = em.find(Member.class, memberId);
		return Optional.ofNullable(member);
	}

	@Override
	public void updateByMember(Member member) {
		System.out.println("MemberJpaRepositoryImpl updateByMember start");
	    // 1. update
		// merge --> 현재 Setting된것만 수정하고 나머지는 Null
	    // 그래서 이거는 이름만 바꾸고 비번은 Null값이 나오는거임
		//em.merge(member);
		
		
//		2. update
		Member member3 = em.find(Member.class, member.getId());
		member3.setId(member.getId());
		member3.setName(member.getName());
	}

}
