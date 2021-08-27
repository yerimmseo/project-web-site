package com.teamright.brokurly.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class AddressVO {
	private String customer_id;
	@NonNull
	private String address_main;
	@NonNull
	private String address_detail;
	private Integer address_check;
	private String receive_customer;
	private String receive_tel;
}
