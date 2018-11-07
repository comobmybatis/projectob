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
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	// 공지사항 전체 게시글을 표시
	public static List<BoardplusVO> getNoticeList(Map<String, Integer> map) {
		return getSql().selectList("noticeList", map);
	}
	
	// 공지사항 페이지 전체 건수 조회
	public static int getTotalCount() {
		int totalCount = getSql().selectOne("noticeTotalCount");
		return totalCount;
	}
	
	// 공지사항 게시물 작성
	public static int noticeInsert(BoardplusVO vo) {
		int result = getSql().insert("noticeInsert", vo);
		getSql().commit();
		return result;
	}
	
	// 공지사항 조회수
	public static int noticeHit(BoardplusVO vo) {
		return getSql().update("noticeHit", vo);
	}

	//아이디값 조회
	public static UserVO checkId(String account) {
		
		return getSql().selectOne("checkId", account);
		
	}
	
	//회원가입 insert
	public static int checkJoin(UserVO vo) {
		return getSql().insert("checkJoin", vo);
	}
}