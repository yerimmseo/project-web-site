package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NonNull;

@Data
@Component
public class MainCategoryVO {
	@NonNull
	private Integer maincate_id;
	@NonNull
	private String maincate_name;
}
