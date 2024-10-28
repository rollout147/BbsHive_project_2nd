package com.oracle.oBootMybatis01.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAop {
	//인터셉터의 포스트핸들 역할
	//com.oracle.oBootMybatis01.dao package안의 EmpDao이름을 가진 모든것
	@Pointcut("within(com.oracle.oBootMybatis01.dao.EmpDao*)")
	private void pointcutMethod() {

	}

	//인터셉터의 프리핸들 역할
	@Around("pointcutMethod()")
	public Object loggerAop(ProceedingJoinPoint joinPoint) throws Throwable {
		String signatureStr = joinPoint.getSignature().toShortString();
		System.out.println(signatureStr + " is start");
		long st = System.currentTimeMillis();
		
		try {
			// 핵심 관심사(Buz) -> totalEmp, listEmp
			Object obj = joinPoint.proceed();
			return obj;
		} finally {
			long et = System.currentTimeMillis();
			System.out.println(signatureStr + " is finished");
			System.out.println(signatureStr + " 경과시간 : " + (et - st));
		}
	}
	
	@Before("pointcutMethod()")
	public void beforeMethod() {
		System.out.println(" AOP beforeMethod start");
	}
}
