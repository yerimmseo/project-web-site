package com.teamright.brokruly.model;

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
public class ManagerVO {
	@NonNull
	private String manager_id;
	private String manager_pw;
	private String manager_name;
}
