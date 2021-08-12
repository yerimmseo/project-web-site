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
public class CustomerBbsVO {
	@NonNull
	private Integer customerbbs_id;
	private String customerbbs_title;
	private String customerbbs_content;
	private String customer_id;
}
