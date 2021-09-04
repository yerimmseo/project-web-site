package com.teamright.brokurly.bbs.mapper;

import java.util.List;

import com.teamright.brokurly.model.BoardVO;
import com.teamright.brokurly.model.SearchCriteria;

public interface BoardMapper {
	
	public void create(BoardVO vo) throws Exception; 
	public BoardVO read(int bno) throws Exception; 
	public void update(BoardVO vo) throws Exception; 
	public void delete(int bno) throws Exception; 
	public void updateViewcnt(int bno) throws Exception;
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
