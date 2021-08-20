package com.teamright.brokurly.customer.service;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.SignUpMapper;
import com.teamright.brokurly.model.CustomerVO;

@Service
public class SignUpServiceImpl implements SignUpService{

	@Autowired
	SignUpMapper signupMapper;
	
	@Override
	public String idCheck(String customer_id) {
		return signupMapper.idCheck(customer_id);
	}
	
	@Override
	public String emailCheck(String customer_email) {
		return signupMapper.emailCheck(customer_email);
	}
	
	@Override
	public String telCheck(String customer_tel) {
		return signupMapper.telCheck(customer_tel);
	}

	@Override
	public void signUp(CustomerVO customerVO) {
		try {
			MessageDigest digest;
			digest = MessageDigest.getInstance("SHA-512");
			digest.reset();
			digest.update(customerVO.getCustomer_pw().getBytes("utf8"));
			customerVO.setCustomer_pw(String.format("%0128x", new BigInteger(1, digest.digest())));
			signupMapper.signUp(customerVO);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}