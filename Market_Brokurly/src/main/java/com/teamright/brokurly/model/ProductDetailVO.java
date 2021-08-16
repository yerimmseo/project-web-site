package com.teamright.brokurly.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductDetailVO {
	private Integer product_id;
	private String detail_content;
}
