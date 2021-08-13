package com.teamright.brokruly.product.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokruly.model.MainCategoryVO;
import com.teamright.brokruly.model.SubCategoryVO;
import com.teamright.brokruly.product.mapper.MainCategoryMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestCategoryMapper {

	@Autowired
	private MainCategoryMapper mainCategoryMapper;
	@Autowired
	private SubCategoryMapper subCategoryMapper;
	
	@Test
	public void getMainCateListTest() {
		List<MainCategoryVO> mainCateList = mainCategoryMapper.getMainCateList();
		
		for (MainCategoryVO mainCate : mainCateList) {
			System.out.println(mainCate);
		}
	}
	
	@Test
	public void getSubCateListTest() {
		List<SubCategoryVO> subCateList = subCategoryMapper.getSubCateList();
		
		for (SubCategoryVO subCate : subCateList) {
			System.out.println(subCate);
		}
	}
	
	@Test
	public void searchByMainCategoryTest() {
		List<SubCategoryVO> subCateList = subCategoryMapper.searchByMainCategory(10);
		/*
		 * 메인 카테고리가 10번인 서브 카테고리들 조회
		 * */
		for (SubCategoryVO subCate : subCateList) {
			System.out.println(subCate);
		}
	}

}
