package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Component
@RequiredArgsConstructor
@NoArgsConstructor
public class MainCategoryVO {
	@NonNull
	private Integer maincate_id;
	@NonNull
	private String maincate_name;
}
