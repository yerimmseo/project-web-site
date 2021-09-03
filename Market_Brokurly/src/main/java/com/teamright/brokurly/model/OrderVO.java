package com.teamright.brokurly.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
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
public class OrderVO {
	@NonNull
	private Integer order_id;
	private String customer_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date order_time;
	
	private Integer og_sum;
	private Integer shipping_fee;
	private Integer discount_amount;
	private Integer total_money;
	private Integer mileage;
	private String re_customer;
	private String re_customer_tel;
	private String re_addr_main;
	private String re_addr_sub;
}