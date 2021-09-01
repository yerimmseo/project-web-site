package com.teamright.brokurly.customer.service;

import java.util.List;

import com.teamright.brokurly.model.AddressVO;

public interface SignInService {
	// 비밀번호 암호화
	public String getSHA512(String customer_pw) throws Exception;
	// 아이디 체크
	public String idCheck(String customer_id);
	// 비밀번호 체크
	public String pwCheck(String customer_id);
	// 이름 가져오기
	public String getName(String customer_id);
	// 주소 가져오기
	public List<AddressVO> getAddress(String customer_id);
	// 등급 가져오기
	public String getGrade(String customer_id);
}