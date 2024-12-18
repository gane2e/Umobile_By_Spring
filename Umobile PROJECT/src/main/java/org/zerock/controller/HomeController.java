package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class HomeController {
	
	
	@GetMapping("/")
	public String index(Model model) {
		
		return "index";
	}
	
	@GetMapping("/logout")
	public String adminLogout(HttpSession session, HttpServletRequest request) {

		log.info("로그아웃 요청 / 요청자 세션 ---> " + session);

		session.invalidate(); // 세션 무효화
		log.info("세션 무효화 완료 -> 메인페이지 리다이렉트");
		
		return "redirect:/";
	}
	

}