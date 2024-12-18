package org.zerock.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class UserMapperTests {

	
	@Autowired
	private UserMapper mapper;
	
	@Test
	public void userTest() {  // 회원가입 테스트완료
		
		UserVO vo = new UserVO();
		
		vo.setEmail("test@test");
		vo.setName("user2");
		vo.setPassword("pass");
		vo.setPhone("010-1234-1234");
		vo.setAddr("경기도 수원시");
		
		mapper.insertUser(vo);
	}
	
	@Test
	public void userUpdate() { // 회원정보 수정 테스트 완료
		
		UserVO vo = new UserVO();
		
		vo.setUno(29L);
		vo.setName("user2");
		vo.setPassword("pass");
		vo.setAddr("경기도 수원시");
		
		mapper.updateUser(vo);
		
	}

}
