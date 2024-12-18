package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.OrderVO;
import org.zerock.mapper.OrderMapper;
import org.zerock.mapper.OrderMapperTest;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class OrderServiceImplTest {

	@Autowired
	public OrderMapper mapper;
	
	@Autowired
	public OrderService service;
	
	@Test //addPhone테스트
	public void orderInsertTest() {
	
		OrderVO orderVO = new OrderVO();
		
		orderVO.setUno(29);
		orderVO.setCno(13);
		orderVO.setColor("핑크골드");
		orderVO.setInstallment("12개월");
		orderVO.setVatPrice(40000);
		
		log.info(orderVO);
		
		service.addPhone(orderVO);
	}

}
