package com.teamright.brokurly.model;

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
public class SubCategoryVO {
	private Integer maincate_id;
	@NonNull
	private Integer subcate_id;
	@NonNull
	private String subcate_name;
}
