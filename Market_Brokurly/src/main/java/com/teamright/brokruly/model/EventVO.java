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
public class EventVO {
	@NonNull
	private Integer event_id;
	@NonNull
	private String event_name;
	private Integer event_discount;
}
