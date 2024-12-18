package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.AdminVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.UserVO;

public interface AdminMapper {
	
	public AdminVO read(String username); // 관리자 로그인 처리

	public void insertPhone(ProductVO productVO); //관리자 상품등록

	public List<UserVO> memberList(); // 회원목록 조회

	public List<AdminVO> adminList(); // 관리자목록 조회
	
	public void resetPassword(long uno, String password);
}
