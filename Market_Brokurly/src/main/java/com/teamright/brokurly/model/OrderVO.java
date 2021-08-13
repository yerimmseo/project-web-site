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
	private Integer product_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date order_time;
}
