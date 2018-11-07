package com.ob.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ob.mybatis.DBService;
import com.ob.vo.BoardplusVO;
import com.ob.vo.RoomVO;

public class DAO {
	private static SqlSession ss;

	// 싱글턴패턴 : 하나의 객체만을 만들어 사용
	private synchronized static SqlSession getSql() {
		if (ss == null) {
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}

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
	
	// 공지사항 게시물 작성
	public static int noticeInsert(BoardplusVO vo) {
		int result = getSql().insert("noticeInsert", vo);
		getSql().commit();
		return result;
	}
	
/*	
	//프리미엄 후기 조회
	public static List<PremiumVO> getPremium(){
		return getSql().selectList("selectPremium");
	}
	
	//프리미엄 후기 전체 건수 조회 
	public static int getTotalPremium() {
		int totalCount = getSql().selectOne("totalPremiumCount");
		return totalCount;
	}
	
	//프리미엄 후기 페이지별 조회
	public static List<PremiumVO> getPremPageList(Map<String,Integer> map){
		return getSql().selectList("getPremPageList", map);
	}
*/	
	
	
	
}
