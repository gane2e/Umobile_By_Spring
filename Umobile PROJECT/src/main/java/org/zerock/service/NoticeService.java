package org.zerock.service;

//import org.zerock.domain.BoardVO;
import org.zerock.domain.NoticeVO;
import java.util.List;

public interface NoticeService {
	// 공지사항 생성
	void create(NoticeVO notice);

	// 공지사항 읽기
	NoticeVO read(Long nno);

	// 공지사항 수정
	void update(NoticeVO notice);

	// 공지사항 삭제
	void delete(Long nno);

	// 검색 기능 추가
	List<NoticeVO> searchPosts(String keyword, int offset, int limit);

	// 모든 공지사항 가져오기
	List<NoticeVO> getAll();

	// 페이징을 위한 공지사항 가져오기
	List<NoticeVO> getAllWithPaging(int offset, int limit);
	
	
    int getTotalCount();
    
    List<NoticeVO> getRecentNotices(int limit);
}
