package com.teamright.brokurly.customer.mapper;

import org.apache.ibatis.annotations.Param;

public interface FindMapper {
	// 아이디 찾기(가져오기)
	public String getID(@Param("customer_name")String customer_name, 
						@Param("customer_email")String customer_email);
	
	// 비밀번호 찾기(가져오기)
	public String getPW(@Param("customer_name")String customer_name,
						@Param("customer_id")String customer_id,
						@Param("customer_email")String customer_email);
	
	// 비밀번호 변경
	public void changePW(@Param("customer_pw")String customer_pw,
			 			 @Param("customer_id")String cusotmer_id);
}