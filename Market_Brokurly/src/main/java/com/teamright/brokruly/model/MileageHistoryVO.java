package com.teamright.brokruly.model;

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
public class MileageHistoryVO {
	private String customer_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date history_date;
	@NonNull
	private Integer history_amount;
	@NonNull
	private String history_content;
	@DateTimeFormat(pattern = "yyy-MM-dd")
	private Date history_validity;
}
