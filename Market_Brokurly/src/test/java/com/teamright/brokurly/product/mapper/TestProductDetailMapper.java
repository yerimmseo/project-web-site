package com.teamright.brokurly.product.mapper;

import static org.junit.Assert.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokurly.model.ProductDetailVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestProductDetailMapper {

	@Autowired
	private ProductDetailMapper detailMapper;
	
	@Test
	public void test() {
		ProductDetailVO detailInfo = detailMapper.getProductDetail(10);
		
		// CLOB형 데이터 어떤 방식으로 쪼개지는지 확인. split()이용해서 데이터 처리예정
		// true, false 이용해서 공백일 경우 true로 변경해서 테이블 사용할 것
		String[] arr = detailInfo.getDetail_content().split("\n");
		for(int i = 0; i < arr.length; i++) {
			log.info(i + " : " + arr[i]);
		}
	}
	
	//디비에 상품설명 파일 저장
	//@Ignore
	@Test
	public void test1() throws IOException {
	
		File file = new File("D:\\1)상세설명\\[야미얼스] 구미젤리 64g.txt");
		StringBuilder sb = new StringBuilder();
	
		try (
				FileReader reader = new FileReader(file, Charset.forName("UTF-8"));		
				BufferedReader bf = new BufferedReader(reader);
			){
			String line = "";
			while((line = bf.readLine()) != null) {
				sb.append(line);
				sb.append(System.getProperty("line.separator"));
			}
			
			//상품아이디 잘 확인!!!!!!!!!!!!!!!
			detailMapper.create_product_detail(675, sb.toString());
		
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
	}
}
