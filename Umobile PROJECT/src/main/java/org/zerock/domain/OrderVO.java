package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private long vno; // 구매내역 식별키
	private long uno; // 회원 식별키
	private long cno; // 상품 식별키
	
	private String email; //구매자id
	private String name; //구매자명
	private String phone; //휴대폰번호
	private String phone_Name; //폰 이름
	private String giga; //용량
	private String serial; //시리얼
	private String price; //판매가
	private String color; // 색상
	private String installment; // 할부
	private double vatPrice; // 결제 금액(부가세포함)
	private Date regDate; // 구매 일자
	
	private String vatPriceFormatted; //포맷된 결제금액
	
	


	
}
