package com.teamright.brokurly.customer.mapper;

public interface FindMapper {
	// 아이디 찾기(가져오기)
	public String getID(String customer_name, String customer_email);
}
