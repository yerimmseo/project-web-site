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
public class DeliveryVO {
	@NonNull
	private Integer delivery_id;
	private String delivery_status;
	private String delivery_address;
	private String customer_id;
	private Integer order_id;
}
