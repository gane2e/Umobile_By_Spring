package org.zerock.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.zerock.domain.UserVO;
import org.zerock.mapper.UserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class UserServiceImple implements UserService {

	@Autowired
	private final UserMapper mapper;
	
	PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Override // 회원가입 처리
	public void register(UserVO vo) {
		
		mapper.insertUser(vo);
		log.info("register (vo)----->" + vo);
	}

	@Override // 로그인 처리
	public UserVO login(String username, String password) {
		
        Map<String, String> params = new HashMap<>();
        params.put("username", username);
        
        // DB에서 사용자 정보를 조회
        UserVO userVO = mapper.login(params);
		
        log.info("userVO -------------> " + userVO);
        
        // 사용자가 존재하고, 입력된 비밀번호가 암호화된 비밀번호와 일치하는지 확인
        if(userVO != null &&  passwordEncoder.matches(password, userVO.getPassword())) {
        	return userVO;
        }
        
		return null; //로그인 실패
	}

	@Override //이메일 중복체크
	public boolean checkEmail(String email) {
		
		log.info("email 중복체크------->" + email);
		
		return mapper.checkEmail(email) > 0;
	}
	
	@Override //회원정보 수정(비밀번호 포함X)
	public boolean updateUser(UserVO vo) {
		return mapper.updateUser(vo);
	}
	
	@Override //회원정보 수정(비밀번호 포함O)
	public boolean updateUserPw(UserVO vo) {
		return mapper.updateUserPw(vo);
	}
	

	@Override //회원탈퇴
	public boolean deleteUserByEmail(long uno) {
		return mapper.deleteUser(uno);
	}


	
	

}
