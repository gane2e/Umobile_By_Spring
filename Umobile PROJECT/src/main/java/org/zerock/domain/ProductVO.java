package org.zerock.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ProductVO {

	private long cno; // 식별 번호
	private String serial; // 휴대폰 시리얼넘버
	private String giga; // 휴대폰 용량
	private String price; // 휴대폰 가격
	private String phone_Name; // 휴대폰 이름
	private String phone_Size; // 휴대폰 사이즈
	private String phone_Weight; // 휴대폰 무게
	private String camera; // 휴대폰 카메라 정보
	private String battery; // 휴대폰 배터리 정보
	private String memory; // 휴대폰 메모리 정보
	private String display; // 휴대폰 메모리 정보
	private String status; // 휴대폰 상태
	private String manufacturer; // 제조사
	private String color; // 색상
	private String cpu; // CPU 정보
	private String options; // 기타 옵션
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date release_Date; // 출시일
	private String os; // 운영체제 (OS)

	/* 241130 썸네일제거, 이미지경로추가 */
	private String image_Path; //이미지경로
	private String description1; // 상품설명1
	private String description2; // 상품설명2

	private String security; 
	private String waterproof;
	
	private Date regdate;
}
