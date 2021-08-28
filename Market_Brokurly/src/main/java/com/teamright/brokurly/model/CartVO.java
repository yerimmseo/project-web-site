package com.teamright.brokurly.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class CartVO {
   private Integer cart_id;
   private Integer cart_count;
   private Integer product_id;
   private Integer product_price;
   private String product_name;
   private String customer_id;
   private String money;
}