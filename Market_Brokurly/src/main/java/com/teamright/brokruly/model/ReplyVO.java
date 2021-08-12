package com.teamright.brokruly.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReplyVO {
	private Integer customerbbs_id;
	private String reply_content;
}
