package org.zerock.service;

import java.util.List;

import org.zerock.domain.AdminVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.UserVO;

public interface AdminService {

	public AdminVO login(String username, String password); // 관리자 로그인처리

	public void insertPhone(ProductVO productVO); // 상품등록

	public List<UserVO> memberList(); // 회원목록 조회

	public List<AdminVO> adminList(); // 관리자목록 조회

	public void resetPassword(long uno, String password); 	// 회원 비밀번호 초기화
}
