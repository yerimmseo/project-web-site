package com.teamright.brokurly.bbs.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.teamright.brokurly.model.BoardVO;
import com.teamright.brokurly.model.SearchCriteria;

public class BoardMapperImpl implements BoardMapper {

	@Inject 
	private SqlSession session; 
	
	private static String namespace ="com.teamright.brokurly.bbs.mapper.BoardMapper";
	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}
	@Override
	public BoardVO read(int bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}
	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}
	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace+".delete", bno);
	}
	@Override
	public void updateViewcnt(int bno) throws Exception {
		session.update(namespace+".updateViewcnt", bno);
		
	}
	@Override
	public List<BoardVO> listSearch(SearchCriteria pvo) throws Exception {
		return session.selectList(namespace+".listSearch", pvo);
	}
	@Override
	public int listSearchCount(SearchCriteria pvo) throws Exception {
		return session.selectOne(namespace+".listSearchCount", pvo);
	}


}