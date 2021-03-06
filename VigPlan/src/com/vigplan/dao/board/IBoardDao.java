package com.vigplan.dao.board;

import java.util.List;

import com.vigplan.vo.BoardVo;

public interface IBoardDao {
	public List<BoardVo> getAllLogs();
	public int insertBoard(BoardVo vo);
	public BoardVo getBoardItem(Long id);	//	id로 게시물 받아오기
	public BoardVo getBoardItem(Long id, String password);
	public int updateBoard(BoardVo vo);		//	게시물 업데이트
	public int deleteBoardItem(Long id);	//	게시물 삭제(by id)
}
