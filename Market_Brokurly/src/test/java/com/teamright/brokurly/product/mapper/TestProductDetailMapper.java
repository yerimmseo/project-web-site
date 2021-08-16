package com.teamright.brokurly.product.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokurly.model.ProductDetailVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestProductDetailMapper {

	@Autowired
	private ProductDetailMapper detailMapper;
	
	@Test
	public void test() {
		ProductDetailVO detailInfo = detailMapper.getProductDetail(10);
		
		// CLOB형 데이터 어떤 방식으로 쪼개지는지 확인. split()이용해서 데이터 처리예정
		// true, false 이용해서 공백일 경우 true로 변경해서 테이블 사용해야 할 것 같음
		String[] arr = detailInfo.getDetail_content().split("\n");
		for(int i = 0; i < arr.length; i++) {
			System.out.println(i + " : " + arr[i]);
		}
	}
}
