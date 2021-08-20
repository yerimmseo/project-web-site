package com.teamright.brokurly.customer.service;

import java.math.BigInteger;
import java.security.MessageDigest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.LoginMapper;


@Service
public class LoginServiceimpl implements LoginService {

	@Autowired
	LoginMapper loginMapper;
	
	@Override
	public String getSHA512(String customer_pw) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("SHA-512");
		digest.reset();
		digest.update(customer_pw.getBytes("utf8"));
		String result = String.format("%0128x", new BigInteger(1, digest.digest()));
		
		return result;
	}

	@Override
	public String idCheck(String customer_id) {
		return loginMapper.idCheck(customer_id);
	}

	@Override
	public String pwCheck(String customer_id) {
		return loginMapper.pwCheck(customer_id);
	}

	@Override
	public String getName(String customer_id) {
		return loginMapper.getName(customer_id);
	}

}
