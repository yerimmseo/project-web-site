package com.teamright.brokruly.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class SalesVO {
	private Integer product_id;
	private Integer sales_count;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sales_paymentdate;
}
