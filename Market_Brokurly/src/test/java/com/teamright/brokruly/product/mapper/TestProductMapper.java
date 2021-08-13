package com.teamright.brokruly.product.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokruly.model.ProductVO;
import com.teamright.brokruly.product.mapper.ProductMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestProductMapper {

	@Autowired
	ProductMapper productMapper;
	
	@Ignore
	@Test
	public void getInfoAsSearchSubCateTest() {
		List<ProductVO> productList = productMapper.getListBySub(22);
		
		for (ProductVO product : productList) {
			System.out.println(product);
		}
	}
	
	@Test
	public void getListByMainTest() {
		List<ProductVO> productList = productMapper.getListByMain(10);
		
		for (ProductVO product : productList) {
			System.out.println(product);
		}
	}

}
