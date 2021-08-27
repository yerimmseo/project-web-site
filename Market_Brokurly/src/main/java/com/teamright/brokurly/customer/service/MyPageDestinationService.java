package com.teamright.brokurly.customer.service;

public interface MyPageDestinationService {
	public void insertNewAddr(String customer_id, String address_main, String address_detail, String address_check);
	public void getUpdatPopup1(String customer_id, String address_main, String address_detail, String receive_customer, String receive_tel);
}
