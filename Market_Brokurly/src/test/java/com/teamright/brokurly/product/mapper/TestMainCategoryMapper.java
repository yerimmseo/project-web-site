package com.teamright.brokurly.product.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokruly.model.MainCategoryVO;
import com.teamright.brokruly.product.mapper.MainCategoryMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestMainCategoryMapper {

	@Autowired
	private MainCategoryMapper mainCategoryMapper;
	
	@Test
	public void getCateListTest() {
		List<MainCategoryVO> mainCateList = mainCategoryMapper.getCateList();
		
		for (MainCategoryVO mainCate : mainCateList) {
			System.out.println(mainCate);
		}
	}

}
