package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class CustomerCouponVO {
	private String customer_id;
	private Integer coupon_id;
	private String coupon_confirm;
}
