package com.teamright.brokurly.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class CustomerCouponVO {
	private String customer_id;
	private Integer coupon_id;
	private String coupon_confirm;
}
