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
public class ProductVO {
	private Integer subcate_id;
	@NonNull
	private Integer product_id;
	@NonNull
	private String product_name;
	private Integer product_price;
	@NonNull
	private String product_origin;
	private String product_unit;
	private Integer event_id;
	private Integer order_id;
	private String customer_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date order_time;
	private Integer order_count;
	private Integer maincate_id;
	private String subcate_name;
	
	private String event_name;
	private Integer event_discount;
	private Integer delivery_id;
	private String delivery_status;
}
