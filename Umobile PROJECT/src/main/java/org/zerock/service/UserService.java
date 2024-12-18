package org.zerock.service;

import org.zerock.domain.UserVO;

public interface UserService {
	
	public void register(UserVO vo); //회원가입
	
	public boolean checkEmail(String email); //회원가입 이메일 중복체크
	
	public UserVO login(String username, String password); //로그인처리 (DB회원 조회)
	
	public boolean updateUser(UserVO vo); //회원정보 수정 (비밀번호 포함X)
	
	public boolean updateUserPw(UserVO vo); //회원정보 수정 (비밀번호 포함O)
	
	public boolean deleteUserByEmail(long uno); //회원 탈퇴
}
