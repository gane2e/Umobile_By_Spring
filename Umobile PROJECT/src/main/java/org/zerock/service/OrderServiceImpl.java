package org.zerock.service;

import java.text.DecimalFormat;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.OrderVO;
import org.zerock.domain.ProductVO;
import org.zerock.mapper.OrderMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

	@Autowired
	private final OrderMapper mapper;

	@Override // 주문내역 저장
	public void addPhone(OrderVO orderVO) {
		mapper.orderInsert(orderVO);
	}

	@Override // 개인 신청내역 조회
	public List<OrderVO> orderRead(long uno) {

		List<OrderVO> orderList = mapper.orderRead(uno);
		DecimalFormat formatter = new DecimalFormat("#,###");
		//최근신청일기준 정렬
		orderList.sort(Comparator.comparing(OrderVO::getRegDate).reversed());
		//결제금액(10,000.0 -> 10,000 포맷팅)
		orderList.stream().forEach(order -> {
			double vatPrice = order.getVatPrice(); // VATPRICE 값
			String formattedVatPrice = formatter.format(vatPrice); // 포맷팅된 문자열
			order.setVatPriceFormatted(formattedVatPrice); // 포맷팅된 값을 설정
		});
		return orderList;
	}

	@Override // 관리자 신청내역 관리
	public List<OrderVO> orderList() {
		List<OrderVO> orderList = mapper.orderList();
		DecimalFormat formatter = new DecimalFormat("#,###");

		orderList.sort(Comparator.comparing(OrderVO::getRegDate).reversed());
		orderList.stream().forEach(order -> {
			double vatPrice = order.getVatPrice(); // VATPRICE 값
			String formattedVatPrice = formatter.format(vatPrice); // 포맷팅된 문자열
			order.setVatPriceFormatted(formattedVatPrice); // 포맷팅된 값을 설정
		});
		return orderList;
	}

	@Override // 최근 신청내역 조회
	public List<OrderVO> fetchRecentOrders(int limit) {
		List<OrderVO> orderList = mapper.fetchRecentOrders(limit);
		DecimalFormat formatter = new DecimalFormat("#,###");

		orderList.sort(Comparator.comparing(OrderVO::getRegDate).reversed());
		orderList.stream().forEach(order -> {
			double vatPrice = order.getVatPrice(); // VATPRICE 값
			String formattedVatPrice = formatter.format(vatPrice); // 포맷팅된 문자열
			order.setVatPriceFormatted(formattedVatPrice); // 포맷팅된 값을 설정
		});
		return orderList;
	}

	@Override
	public void cancel(long vno) {
		mapper.cancel(vno);
	}

}
