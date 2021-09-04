package com.teamright.brokurly.bbs.service;

import java.util.List;


import com.teamright.brokurly.model.BoardVO;
import com.teamright.brokurly.model.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO board) throws Exception; // �Խñ� ���
	public BoardVO read(int bno) throws Exception; // �Խñ� ��ȸ
	public void modify(BoardVO board) throws Exception; // �Խñ� ����
	public void remove(int bno) throws Exception; // �Խñ� ����
	public void updateViewcnt(int bno) throws Exception; // ��ȸ�� ����
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception; // ��ü �Խñ� ���
	public int listSearchCount(SearchCriteria cri) throws Exception; // ����¡ ó��
}
