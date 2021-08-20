package com.teamright.brokurly.customer.service;

public interface LoginService {
   
	  //비밀번호 암호화
	   public String getSHA512(String customer_pw) throws Exception ;
	   
	   // 아이디 체크
	   public String idCheck(String customer_id);
	   
	   // 비밀번호 체크
	   public String pwCheck(String customer_id);
	   
	   // 이름 가져오기
	   public String getName(String customer_id);

}
