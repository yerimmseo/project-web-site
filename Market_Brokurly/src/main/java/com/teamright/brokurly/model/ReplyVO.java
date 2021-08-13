package com.teamright.brokurly.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class ReplyVO {
	private Integer customerbbs_id;
	private String reply_content;
}
