package com.teamright.brokurly.bbs.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.bbs.mapper.BoardMapper;
import com.teamright.brokurly.model.BoardVO;
import com.teamright.brokurly.model.SearchCriteria;


@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardMapper dao;
	
	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);
	}
	@Override
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}
	@Override
	public void remove(int bno) throws Exception {
		dao.delete(bno);
	}
	@Override
	public void updateViewcnt(int bno) throws Exception {
		dao.updateViewcnt(bno);
	}
	@Override
	public List<BoardVO> listSearch(SearchCriteria pvo) throws Exception {
		return dao.listSearch(pvo);
	}
	@Override
	public int listSearchCount(SearchCriteria pvo) throws Exception {
		return dao.listSearchCount(pvo);
	}

}
