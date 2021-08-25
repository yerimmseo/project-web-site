package com.teamright.brokurly.model;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class DetailOrderVO {
	private Integer order_id;
	private String customer_id;
	private Date order_time;
	private Integer product_id;
	private Integer count;
	private Integer total_price;
}
