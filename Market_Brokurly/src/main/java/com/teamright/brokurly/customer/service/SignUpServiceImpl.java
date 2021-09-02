package com.teamright.brokurly.customer.service;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.SignUpMapper;
import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;

@Service
public class SignUpServiceImpl implements SignUpService{

	@Autowired
	SignUpMapper signupMapper;
	
	@Override
	public String idCheck(String customer_id) {
		String result = signupMapper.idCheck(customer_id);
		return result;
	}
	
	@Override
	public String emailCheck(String customer_email) {
		String result = signupMapper.emailCheck(customer_email);
		return result;
	}
	
	@Override
	public String telCheck(String customer_tel) {
		String result = signupMapper.telCheck(customer_tel);
		return result;
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

	@Override
	public void insertAddress(AddressVO addressVO) {
		signupMapper.insertAddress(addressVO);
	}

	@Override
	public void deleteId(String customer_id) {
		signupMapper.deleteId(customer_id);
	}

	@Override
	public void deleteCart(String customer_id) {
		signupMapper.deleteCart(customer_id);
	}

	@Override
	public void deleteAddress(String customer_id) {
		signupMapper.deleteAddress(customer_id);
	}

	@Override
	public void deleteCoupon(String customer_id) {
		signupMapper.deleteCoupon(customer_id);
	}
}