package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class CartVO {
	private Integer cart_count;
	private Integer product_id;
	private String customer_id;
}
