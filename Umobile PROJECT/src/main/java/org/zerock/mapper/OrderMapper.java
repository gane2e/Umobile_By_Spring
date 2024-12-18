package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.OrderVO;

public interface OrderMapper {

	// 주문내역 저장
	public void orderInsert(OrderVO orderVO);

	// 한 사람의 주문내역 조회 (유저 마이페이지)
	public List<OrderVO> orderRead(long uno);

	// 모든 주문내역 조회 (관리자 페이지)
	public List<OrderVO> orderList();

	// 최근 휴대폰 신청내역
	public List<OrderVO> fetchRecentOrders(@Param("limit") int limit);

	//회원 휴대폰 가입신청 취소처리
	public void cancel(long vno);
}
