package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Component
@NoArgsConstructor
@RequiredArgsConstructor
public class ProductBbsVO {
	@NonNull
	private Integer productbbs_id;
	private String productbbs_title;
	private String productbbs_content;
	private String productbbs_status;
	private Integer product_id;
}
