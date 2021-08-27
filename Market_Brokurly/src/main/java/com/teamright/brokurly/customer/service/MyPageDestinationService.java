package com.teamright.brokurly.customer.service;

public interface MyPageDestinationService {
	public void insertNewAddr(String customer_id, String address_main, String address_detail, String address_check);
	public void getUpdatePopup1(String customer_id, String address_main, String address_detail,
								String receive_customer, String receive_tel);
	public void getUpdatePopup0(String customer_id, String address_main, String address_detail, 
								String receive_customer, String receive_tel, String address_chk);
	public void getDeletePopup0(String customer_id, String address_main);
}
