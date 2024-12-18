package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.OrderVO;
import org.zerock.domain.UserVO;
import org.zerock.service.OrderService;
import org.zerock.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@Log4j
@RequestMapping("/user/*")
@RequiredArgsConstructor
public class UserController {

	private final UserService userService;
	private final OrderService orderService;

	PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	// 회원가입 진입
	@GetMapping("/join")
	public String userJoin(Model model) {

		log.info("user Login page");
		return "user/join";
	}

	// ID 중복체크
	@PostMapping("/user/checkEmail")
	@ResponseBody // view에 요청응답하려면 필수로넣읍시다..
	public String checkEmail(@RequestParam("email") String email) {

		log.info("email ----> " + email);

		boolean isEmailExist = userService.checkEmail(email);

		return isEmailExist ? "exists" : "not exists";
	}

	// 회원가입 요청처리
	@PostMapping("/doJoin")
	public String userJoin(UserVO vo, BindingResult result, Model model) {

		log.info("회원가입 진입---------------");

		String rawPw = "";
		String encodePw = "";

		log.info("vo email 받았나 테스트 ---> " + vo.getEmail());

		// 비밀번호 확인이 일치하지 않으면 에러 처리
		if (!vo.getPassword().equals(vo.getPasswordConfirm())) {
			result.rejectValue("passwordConfirm", "error.passwordConfirm", "비밀번호 확인이 일치하지 않습니다.");
		}

		log.info("패스워드 체크 완료-------");

		// 유효성 검사 실패 시 다시 회원가입 페이지로 리다이렉트
		if (result.hasErrors()) {
			return "user/join"; // 에러 발생 시 이동할 페이지
		}

		rawPw = vo.getPassword();
		encodePw = passwordEncoder.encode(rawPw);
		vo.setPassword(encodePw);

		log.info("vo -------> " + vo);

		userService.register(vo);

		log.info("-------------회원가입 test완료------------");

		return "redirect:/";
	}

	// 로그인 진입
	@GetMapping("/login")
	public String userLogin() {
		log.info("user Login page");
		return "/user/login";
	}

	// 로그인처리
	@PostMapping("/login")
	public String userLogin(@RequestParam String username, @RequestParam String password, Model model,
			HttpSession session) {

		log.info("유저 ID ---> " + username);

		UserVO user = userService.login(username, password);

		if (user == null) {
			model.addAttribute("loginMessage", "아이디 또는 비밀번호를 확인해주세요.");
			return "user/login"; // 로그인 페이지로 다시 돌아가기
		} else {
			model.addAttribute("user", user); // 마이페이지에 회원정보 전달용
			session.setAttribute("user", user); // 로그인 성공 시 세션에 유저정보 저장
		}

		
		log.info("-------로그인 완료-----------");
		log.info("로그인한 유저 세션값 ---> " + session);
		log.info("로그인한 유저 vo값 ---> " + user);
		log.info("로그인한 유저 model ---> " + model);

		return "redirect:/";
	}

	// 신청내역 조회 241129 추가
	@GetMapping("/checkdetails")
	public String checkDetails(HttpServletRequest request, HttpSession session, Model model) {

		UserVO user = (UserVO) request.getSession().getAttribute("user");
		
		if(user != null) {
			long uno = user.getUno();
			List<OrderVO> orderList = orderService.orderRead(uno);
			model.addAttribute("orderList" , orderList);
			log.info("orderList ->" + orderList);
			return "user/checkdetails";
		} else 
			return "user/login";
	}
	
	@PostMapping("/cancel")
	public String cancle(@RequestParam("vno") Long vno, RedirectAttributes redirectAttributes) {
		try {
			orderService.cancel(vno);
			redirectAttributes.addFlashAttribute("message", "가입신청 취소가 완료되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "취소 오류입니다. 관리자에게 문의하세요.");
		}
		  return "redirect:/user/checkdetails"; 
		}
	

	// 회원정보 수정 진입
	@GetMapping("/Edit")
	public String myFage() {
		log.info("회원정보 수정 진입---------------");
		return "user/Edit";
	}

	// 회원수정 post처리
	@PostMapping("/update")
	public String updateUser(UserVO updateUser, BindingResult result, HttpServletRequest request, HttpSession session) {

		String rawPw = "";
		String encodePw = "";

		// test로그
		log.info("회원정보 수정한 vo -------> " + updateUser);

		UserVO userSession = (UserVO) request.getSession().getAttribute("user");
		updateUser.setUno(userSession.getUno());

		// test로그
		log.info("패스워드 체크 완료-------");

		// 유효성 검사 실패 시 다시 회원가입 페이지로 리다이렉트
		if (result.hasErrors()) {
			return "user/Edit"; // 에러 발생 시 이동할 페이지
		}

		/* 비밀번호 미포함해서 수정 시 */
		if (updateUser.getPassword() == null || updateUser.getPassword() == "") {
			userService.updateUser(updateUser);
			log.info("비밀번호 포함X 수정");
		} else {
			/* 비밀번호 포함 해서 수정 시 */
			log.info("비밀번호 포함O 수정");
			rawPw = updateUser.getPassword();
			encodePw = passwordEncoder.encode(rawPw); // 변경한 비밀번호 암호화
			updateUser.setPassword(encodePw);
			userService.updateUserPw(updateUser);
		}

		// 세션에 수정된 user 정보를 저장
		session.setAttribute("user", updateUser);

		log.info("변경된 유저 session ---> " + session);

		// test로그
		log.info("-------------회원수정 test완료------------");

		return "redirect:/user/Edit"; // 회원정보 수정 후 로그인 페이지로 리다이렉트
	}

	// 회원탈퇴 post처리
	@PostMapping("/delete")
	public String deleteUser(HttpServletRequest request) {

		// 세션에서 UserVO 객체를 가져오기
		UserVO user = (UserVO) request.getSession().getAttribute("user");

		Long uno = user.getUno();
		log.info("세션에서 가져온 uno 값: " + uno);

		if (uno != null) {
			boolean isDeleted = userService.deleteUserByEmail(uno);

			if (isDeleted) {
				request.getSession().invalidate();
				return "redirect:/";
			} else {
				return "error"; // 탈퇴 실패 시 오류 페이지로 이동
			}
		}

		return "redirect:/";
	}

}