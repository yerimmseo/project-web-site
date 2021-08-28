package com.teamright.brokurly.customer.mapper;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;

public interface SignUpMapper {
	//아이디 체크
	public String idCheck(String customer_id);
	//이메일 체크
	public String emailCheck(String customer_email);
	//전화번호 체크
	public String telCheck(String customer_tel);
	//회원가입
	public void signUp(CustomerVO customerVO);
	//주소입력
	public void insertAddress(AddressVO addressVO);
}