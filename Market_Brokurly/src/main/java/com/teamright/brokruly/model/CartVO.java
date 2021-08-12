package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class CartVO {
	private Integer cart_count;
	private Integer product_id;
	private String customer_id;
}
