package com.ob.dao;

import java.util.List; 
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ob.mybatis.DBService;
import com.ob.vo.BoardplusVO;
import com.ob.vo.UserVO;

public class DAO {
	private static SqlSession ss;

	// 싱글턴패턴 : 하나의 객체만을 만들어 사용
	private synchronized static SqlSession getSql() {
		if (ss == null) {
			ss = DBService.getFactory().openSession(true);
		}
		return ss;
	}
	
	
/* **** 로그인, 회원가입 **********************************************/
	//아이디값 조회
	public static UserVO checkId(String account) {
		
		return getSql().selectOne("checkId", account);
		
	}
	
	//회원가입 insert
	public static int checkJoin(UserVO vo) {
		return getSql().insert("checkJoin", vo);
	}
	
/* *****************************************************************/
	
	
	
/* **** 게시판 공용 ***************************************************/
	
	//게시판별 전체 게시물 조회
	public static List<BoardplusVO> getAllList(String board_type){
		return getSql().selectList("getList", board_type);
	}

	//게시판별 총 게시물 건수 조회
	public static int totalCount(String board_type) {
		int totalCount = getSql().selectOne("totalCount", board_type);
		return totalCount;
	}
	
	//게시판 페이지별 목록조회
	public static List<BoardplusVO> getList(Map map){
		return getSql().selectList("getPageList", map);
	}
	  
	 
/* *****************************************************************/
	
	
	
	/*
	// 전체 데이타 조회
	public static List<RoomVO> getList() {
		return getSql().selectList("list");
	}
	
	// 공지사항 페이지 전체 건수 조회
	public static int getTotalCount() {
		int totalCount = getSql().selectOne("noticeTotalCount");
		return totalCount;
	}
	
	// 공지사항 페이지 숫자 표시
	public static List<BoardplusVO> getNoticeList(Map<String, Integer> map) {
		return getSql().selectList("noticeList", map);
	}
	*/
	
	// 공지사항 게시물 작성
	public static int noticeInsert(BoardplusVO vo) {
		int result = getSql().insert("noticeInsert", vo);
		getSql().commit();
		return result;
	}

}
