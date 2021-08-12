package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class StockVO {
	private Integer product_id;
	private Integer stock_count;
}	
