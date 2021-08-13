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
public class CouponVO {
	@NonNull
	private Integer coupon_id;
	@NonNull
	private String coupon_name;
	private String coupon_code;
	private Integer coupon_discountrate;
	private Integer coupon_discountprice;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date coupon_term;
}
