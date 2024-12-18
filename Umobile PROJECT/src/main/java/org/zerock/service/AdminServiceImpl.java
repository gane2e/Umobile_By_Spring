package org.zerock.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.zerock.domain.AdminVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.UserVO;
import org.zerock.mapper.AdminMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{

	@Autowired
	private final AdminMapper adminMapper;
	
	@Override
	public AdminVO login(String username, String password) {
		
	    AdminVO adminVO = adminMapper.read(username);
	    
	    // 관리자 계정이 존재하고, 입력된 비밀번호가 DB 비밀번호와 일치하는지 확인
        if(adminVO != null && adminVO.getPassword().equals(password)) {
        	return adminVO;
        }
        
		return null; //로그인 실패
	}

	@Override 
	public void insertPhone(ProductVO productVO) {
		adminMapper.insertPhone(productVO);
	}

	@Override
	public List<UserVO> memberList() {
		return adminMapper.memberList();
	}

	@Override
	public List<AdminVO> adminList() {
		return adminMapper.adminList();
	}

	@Override
	public void resetPassword(long uno, String password) {
		adminMapper.resetPassword(uno, password);
	}

}
