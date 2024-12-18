package org.zerock.mapper;

import org.zerock.domain.NoticeVO;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NoticeMapper {

	// 공지사항 등록
	void create(NoticeVO notice);

	// 공지사항 조회
	NoticeVO read(Long nno);

	// 공지사항 수정
	void update(NoticeVO notice);

	// 공지사항 삭제
	void delete(Long nno);
	
	List<NoticeVO> fetchRecentNotices(@Param("limit") int limit);

	// 모든 공지사항 가져오기
	List<NoticeVO> getAll();

	// 공지사항 목록 (페이징 처리)
	List<NoticeVO> getAllWithPaging(@Param("offset") int offset, @Param("limit") int limit);
	
	// 검색 기능 추가
    List<NoticeVO> searchPosts(@Param("keyword") String keyword, @Param("offset") int offset, @Param("limit") int limit);

	int getTotalCount();

}
