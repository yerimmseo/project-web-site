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
}
