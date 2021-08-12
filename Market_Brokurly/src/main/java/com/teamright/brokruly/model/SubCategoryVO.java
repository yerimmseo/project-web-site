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
public class SubCategoryVO {
	private Integer maincate_id;
	@NonNull
	private Integer subcate_id;
	@NonNull
	private String subcate_name;
}
