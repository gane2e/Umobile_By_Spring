package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.NoticeVO;
import org.zerock.domain.OrderVO;
import org.zerock.domain.ProductVO;


public interface ProductMapper {
	
	//전체리스트 가져오기
	public List<ProductVO> getProduct();

	//1개 상품 정보 가져오기(상세페이지 표출용)
	public ProductVO read(Long cno);
	
	// 선택된 두 상품 정보 가져오기
    List<ProductVO> getSelectedProducts(List<Long> cnoList);
    
    //상품등록
    public void insertPhone(ProductVO productVO);
    
 
}
