package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.AdminVO;
import org.zerock.domain.NoticeVO;
import org.zerock.domain.OrderVO;
import org.zerock.domain.ProductVO;
import org.zerock.domain.UserVO;
import org.zerock.service.AdminService;
import org.zerock.service.NoticeService;
import org.zerock.service.OrderService;
import org.zerock.service.ProductService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@RequiredArgsConstructor
public class AdminController {

	@Autowired
	private final AdminService adminService;

	@Autowired
	private final NoticeService noticeService;

	@Autowired
	private final ProductService productService;

	@Autowired
	private final OrderService orderService;
	
	private static final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	private static final String UPLOAD_DIR = "C:/upload/";

	@GetMapping("/adminloginJoin")
	public String showAdminLoginPage() {

		log.info("addlogin Page.......");

		return "admin/adminloginJoin";

	}

	@PostMapping("/login")
	public String adminLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {

		log.info("-------관리자 로그인 진입-----------");
		log.info(username);
		log.info(password);

		AdminVO admin = adminService.login(username, password);

		log.info(admin);

		// 로그인 성공 시 세션에 사용자 정보 저장
		session.setAttribute("admin", admin);

		log.info("로그인한 관리자 정보 ------> " + admin);

		return "redirect:/admin/Adminmain";
	}

	@GetMapping("/logout")
	public String adminLogout(HttpSession session) {

		log.info("--- 로그아웃 요청받음 ---");
		log.info("로그인 요청자 세션 ---> " + session);

		session.invalidate(); // 세션 무효화

		log.info("세션 무효화 완료 -> 로그인 페이지 리다이렉트");

		return "redirect:/admin/adminloginJoin";
	}

	@GetMapping("/Adminmain") // 공지사항 리스트 (3개) 불러오기 + 최근신청내역 3개
	public String adminMain(HttpServletRequest request, HttpSession session, Model model) {

		AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");

		if (admin != null) {
			List<NoticeVO> noticeList = noticeService.getRecentNotices(3);
			model.addAttribute("noticeList", noticeList);
			List<OrderVO> orderList = orderService.fetchRecentOrders(3);
			model.addAttribute("orderLists", orderList);
			return "admin/Adminmain";
		} else
			return "admin/adminloginJoin";

	}

	@GetMapping("/read/{nno}") // 공지사항 상세보기
	public String read(@PathVariable Long nno, HttpServletRequest request, HttpSession session, Model model) {

		AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");

		if (admin != null) {
			NoticeVO notice = noticeService.read(nno);
			model.addAttribute("notice", notice);
			return "admin/read";
		} else
			return "admin/adminloginJoin";

	}

	@GetMapping("/modify/{nno}") // 공지 수정
	public String updateForm(@PathVariable Long nno, HttpServletRequest request, HttpSession session, Model model) {

		AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");

		if (admin != null) {
			NoticeVO notice = noticeService.read(nno);

			// LocalDateTime -> String 변환
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
			String formattedDate = notice.getRegdate().format(formatter);

			model.addAttribute("notice", notice);
			model.addAttribute("formattedDate", formattedDate);

			return "admin/modify";
		} else
			return "admin/adminloginJoin";
	}

	@PostMapping("/modify/{nno}") // 공지 수정 처리
	public String update(NoticeVO notice) {
		noticeService.update(notice);
		return "redirect:/admin/Adminmain";
	}

	@DeleteMapping("/delete/{nno}") // 공지 삭제
	public ResponseEntity<Void> deleteNotice(@PathVariable Long nno) {
		try {
			noticeService.delete(nno);
			return ResponseEntity.ok().build();
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}

	@GetMapping({ "/registerProduct", "/admin/registerProduct" })
	public String showRegisterForm(HttpServletRequest request, HttpSession session) {

		AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");

		if (admin != null) {
			return "admin/registerProduct";
		} else
			return "admin/adminloginJoin";
	}

	/* 코드 최적화예정입니다. 일단 이방법을 사용하고 추후 수정할게요. */
	@PostMapping("product/register")
	public String registerProduct(@RequestParam("serial") String serial, @RequestParam("giga") String giga,
			@RequestParam("price") String price, @RequestParam("phone_Name") String phone_Name,
			@RequestParam("phone_Size") String phone_Size, @RequestParam("phone_Weight") String phone_Weight,
			@RequestParam("camera") String camera, @RequestParam("battery") String battery,
			@RequestParam("memory") String memory, @RequestParam("display") String display,
			@RequestParam("status") String status, @RequestParam("manufacturer") String manufacturer,
			@RequestParam("color") String color, @RequestParam("cpu") String cpu,
			@RequestParam("options") String options,
			@RequestParam("release_Date") @DateTimeFormat(pattern = "yyyy-MM-dd") Date release_Date,
			@RequestParam("os") String os, @RequestParam("image_Path") MultipartFile image,
			@RequestParam("description1") String description1, @RequestParam("description2") String description2,
			@RequestParam("security") String security, @RequestParam("waterproof") String waterproof,
			MultipartHttpServletRequest multipartRequest) throws IOException {

		String imagePath = null;

		if (!image.isEmpty()) {
			String fileName = UUID.randomUUID().toString() + "_" + image.getOriginalFilename();

			// 실제 파일 저장 경로 설정
			File uploadDir = new File(UPLOAD_DIR);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs(); // 경로가 없으면 디렉토리 생성
			}

			File file = new File(UPLOAD_DIR + fileName);
			image.transferTo(file);
			imagePath = fileName;
		} else
			log.info("이미지가 비어있습니다. upload폴더 확인요망");

		ProductVO product = new ProductVO();

		product.setSerial(serial);
		product.setGiga(giga);
		product.setPrice(price);
		product.setPhone_Name(phone_Name);
		product.setPhone_Size(phone_Size);
		product.setPhone_Weight(phone_Weight);
		product.setCamera(camera);
		product.setBattery(battery);
		product.setMemory(memory);
		product.setDisplay(display);
		product.setStatus(status);
		product.setManufacturer(manufacturer);
		product.setColor(color);
		product.setCpu(cpu);
		product.setOptions(options);
		product.setRelease_Date(release_Date);
		product.setOs(os);
		product.setImage_Path(imagePath);
		product.setDescription1(description1);
		product.setDescription2(description2);
		product.setSecurity(security);
		product.setWaterproof(waterproof);

		productService.insertPhone(product);
		return "redirect:/admin/ProductRegistration";
	}

	// 상품관리 목록
	@GetMapping("/ProductRegistration")
	public void ProductRegistration(Model model) {

		List<ProductVO> products = productService.getProduct();
		products.sort(Comparator.comparing(ProductVO::getRegdate).reversed());

		log.info("products -> " + products);
		model.addAttribute("products", products);
	}

	// 고객 휴대폰 신청내역
	@GetMapping("/PhoneApplicationdetails")
	public void PhoneApplication(Model model) {
		List<OrderVO> orderList = orderService.orderList();
		log.info("orderList -> " + orderList);
		log.info("포맷된결제금액 -> " + orderList.get(0).getVatPriceFormatted());

		model.addAttribute("orderLists", orderList);
	}

	// 일반유저목록
	@GetMapping("/memberList")
	public void memberList(Model model) {
		List<UserVO> memberLists = adminService.memberList();
		memberLists.sort(Comparator.comparing(UserVO::getRegdate).reversed());
		model.addAttribute("memberLists", memberLists);
	}

	// 회원 비밀번호 초기화
	@PostMapping("/resetPassword")
	public String resetPassword(@RequestParam("uno") Long uno, RedirectAttributes redirectAttributes) {
		try {
			log.info("uno ---> " + uno);
			String password = passwordEncoder.encode("0000");
			log.info("password ---> " + password);
			
			
			adminService.resetPassword(uno, password);
			
			redirectAttributes.addFlashAttribute("message", "비밀번호가 초기화되었습니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "비밀번호 초기화에 실패했습니다.");
		}
		  return "redirect:/admin/memberList"; 
	}

	// 관리자계정목록
	@GetMapping("/adminList")
	public void adminList(Model model) {
		List<AdminVO> adminLists = adminService.adminList();
		model.addAttribute("adminLists", adminLists);
	}

}