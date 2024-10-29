package com.oracle.oBootMybatis01.domain;

import java.util.Date;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "member3")
@Data
public class Member {
//JPA에서는 Primary Key가 필수임 @Id로 지정해야됨
	@Id
	private Long   id;
	private String name;
	private String password;
	@Column(nullable = false, columnDefinition = "date default sysdate")
	private Date   reg_date = new Date(); 
	
}















