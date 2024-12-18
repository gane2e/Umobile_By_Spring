<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/subindex.css" rel="stylesheet" />
<link href="${path}/resources/csss/phoneDetail.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../includes/header.jsp"%>


		<form method="post" action="/phone/add">
		<div class="sub-conts product-info">
			<div class="box-phone-info">
				<div class="phone-thumb">
					<div class="big-thumb-wrap">
						<div class="big-thumb-slide slick-initialized slick-slider">
							<div class="slick-list draggable">
								<div class="slick-track">
									<div class="slick-slide">
										 <img src="/upload/${product.image_Path}" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 핸드폰 작은 이미지 -->
					<div class="thumb-slide slick-initialized slick-slider">
						<div class="slick-list draggable">
							<div class="slick-trackl">
								 <img src="/upload/${product.image_Path}">
							</div>
						</div>
					</div>
				</div>
				<div class="phone-detail">
					<div class="detail-top">
						<div class="box-name">
							<h2 class="product-name">
								<span>${product.phone_Name}</span>
								<div class="chip-wrap">
									<img
										src="${pageContext.request.contextPath}/resources/img/chip-5g.png">
								</div>
							</h2>
							<button class="btn-share"></button>
							<ul class="box-detail">
								<li>${product.serial}</li>
								<li>${product.giga}</li>
								<li>${product.status}</li>
							</ul>
						</div>
					</div>
					<div class="detail-bottom">
						<h3 class="detail-title">가입조건 선택</h3>
						<dl class="phone-type-form">
							<dt>색상</dt>
							<dd class="box-pick-color">
								<ul class="color-type">
									<li><input type="radio" id="color1" name="color"
										value="핑크골드" data-count="1" data-colorseq="1"
										data-colornm="핑크골드"> <label for="color1"
										style="background-color: #c8a4b5"> <b class="hidden">핑크골드</b>
									</label></li>
									<li><input type="radio" id="color2" name="color"
										value="펜텀 화이트" data-count="2" data-colorseq="2"
										data-colornm="펜텀 화이트"> <label for="color2"
										style="background-color: #fff"> <b class="hidden">펜텀
												화이트</b>
									</label></li>
									<li><input type="radio" id="color3" name="color"
										value="그린" data-count="3" data-colorseq="3" data-colornm="그린">
										<label for="color3" style="background-color: #008000">
											<b class="hidden">그린</b>
									</label></li>
									<li><input type="radio" id="color4" name="color"
										value="퍼플" data-count="4" data-colorseq="4" data-colornm="B퍼플">
										<label for="color4" style="background-color: #800080">
											<b class="hidden">B퍼플</b>
									</label></li>
									<li><input type="radio" id="color5" name="color"
										value="펜텀 블랙" data-count="5" data-colorseq="5"
										data-colornm="블랙"> <label for="color5"
										style="background-color: #000000"> <b class="hidden">블랙</b>
									</label></li>
								</ul>
								<div class="box-color-name btn-mark">
									<strong>색상을 선택하세요</strong>
								</div>
							</dd>
						</dl>

						<dl class="phone-type-form1">
							<dt>할부개월</dt>
							<dd>
								<div class="btn-radio-group radio-list">
									<div class="btn-radio">
										<input type="radio" id="devHalbuMonth1" name="devHalbuMonth"
											value="12개월" data-devhalbumonth="12"
											data-gtm-form-interact-field-id="1"> <label
											for="devHalbuMonth1">12개월</label>
									</div>
									<div class="btn-radio">
										<input type="radio" id="devHalbuMonth2" name="devHalbuMonth"
											value="24개월" data-devhalbumonth="24"
											data-gtm-form-interact-field-id="2"> <label
											for="devHalbuMonth2">24개월</label>
									</div>
									<div class="btn-radio">
										<input type="radio" id="devHalbuMonth3" name="devHalbuMonth"
											value="30개월" data-devhalbumonth="30"
											data-gtm-form-interact-field-id="3"> <label
											for="devHalbuMonth3">30개월</label>
									</div>
									<div class="btn-radio">
										<input type="radio" id="devHalbuMonth4" name="devHalbuMonth"
											value="36개월" data-devhalbumonth="36"
											data-gtm-form-interact-field-id="4"> <label
											for="devHalbuMonth4">36개월</label>
									</div>
									<div class="btn-radio">
										<input type="radio" id="devHalbuMonth5" name="devHalbuMonth"
											value="일시불" data-devhalbumonth="일시불"
											data-gtm-form-interact-field-id="5"> <label
											for="devHalbuMonth5">일시불</label>
									</div>
								</div>
								<div class="box-btn">
									<a href="#" class="btn-text-right-s">무이자 할부 카드</a>
								</div>
							</dd>
						</dl>

						<div class="banner-slid">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/img/PC_휴대폰상세.png"></a>
						</div>
					</div>
				</div>
			</div>
			<!-- 요금제 선택  -->
			<div class="box-tab02 tab-ctrl">
				<div class="tab-contents-wrap">
					<div class="box-phone-rate">
						<h3 class="detail-title">
							요금제 선택
							<div class="box-btn">
								<a href="#" class="btn-text-right">전체요금제 보기</a>
							</div>
						</h3>
						<div class="card-rate-wrap" id="planList">
							<div class="payment-imgCard-btn">
								<div class="cardList">
									<input type="radio" name="ppnCd" id="ppnCd1" value="LPZ0019036"
										data-upppncd="H004" data-pppncd="LPZ0019036" data-ppnseq="365"
										data-ppnnm="LTE (1.5GB/통화기본)"
										data-gtm-form-interact-field-id="2">
									<div class="ppnCd1">
										<div class="item-top">
											<div class="chip-wrap">
												<a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/통화무제한.png"></a>
											</div>
											<dl class="payment-desc">
												<dt>
													<b class="title">LTE (1.5GB/통화기본)</b>
												</dt>
												<dd>
													<div class="feature">
														<span class="vol"> <a>1.5GB</a>
														</span> <span class="limit"> <a>기본제공</a>
														</span> <span class="supply"> <a>기본제공</a>
														</span>
													</div>
												</dd>
											</dl>
										</div>
									</div>
									<div class="pay-amount">
										<span class="origin-pay">25,900원</span> <strong
											class="discount-pay">19,300원</strong>
									</div>
								</div>
							</div>
							<div class="payment-imgCard-btn">
								<div class="cardList">
									<input type="radio" name="ppnCd" id="ppnCd1" value="LPZ0019036"
										data-upppncd="H004" data-pppncd="LPZ0019036" data-ppnseq="365"
										data-ppnnm="LTE (1.5GB/통화기본)"
										data-gtm-form-interact-field-id="2">
									<div class="ppnCd1">
										<div class="item-top">
											<div class="chip-wrap">
												<a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/badge_textprov.png"></a>
												<a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/1Mbps 무제한.png"></a>
												<a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/통화무제한.png"></a>
											</div>
											<dl class="payment-desc">
												<dt>
													<b class="title">LTE (1GB+/통화기본)</b>
												</dt>
												<dd>
													<div class="feature">
														<span class="vol"> <a>1GB</a>
														</span> <span class="limit"> <a>기본제공</a>
														</span> <span class="supply"> <a>기본제공</a>
														</span>
													</div>
												</dd>
											</dl>
										</div>
									</div>
									<div class="pay-amount">
										<strong class="discount-pay">월 24,900원</strong>
									</div>
								</div>
							</div>
							<div class="payment-imgCard-btn">
								<div class="cardList">
									<input type="radio" name="ppnCd" id="ppnCd2" value="LPZ0019036"
										data-upppncd="H004" data-pppncd="LPZ0019036" data-ppnseq="365"
										data-ppnnm="LTE (1.5GB/통화기본)"
										data-gtm-form-interact-field-id="2">
									<div class="ppnCd2">
										<div class="item-top">
											<div class="chip-wrap">
												<a href="#"><img
													src="${pageContext.request.contextPath}/resources/img/1Mbps 무제한.png"></a>
											</div>
											<dl class="payment-desc">
												<dt>
													<b class="title">LTE (6GB+/통화기본))</b>
												</dt>
												<dd>
													<div class="feature">
														<span class="vol"> <a>6GB</a>
														</span> <span class="limit"> <a>기본제공</a>
														</span> <span class="supply"> <a>기본제공</a>
														</span>
													</div>
												</dd>
											</dl>
										</div>
									</div>
									<div class="pay-amount">
										<span class="origin-pay">34,900원</span> <strong
											class="discount-pay">33,300원</strong>
									</div>
								</div>
							</div>
						</div>
						<!-- 할인 유형 시작 -->
						<dl class="phone-type-form">
							<dt>할인 유형</dt>
							<dd class="dd">
								<div class="radio-group-wrap">
									<ul class="btn-radio-group" id="phoneSupportArea">
										<li class="btn-radio1"><input type="radio" id="support1"
											name="support" value="DIS" data-support="휴대폰 할인 (24개월)"
											checked="checked"> <label for="support1"
											class="label"> <strong> 휴대폰 가격 할인 <span>(공시
														지원금)</span>
											</strong> <b class="txt-vt"> 총 <span id="publicSupport">-449,900</span>
													원
											</b>
										</label></li>
										<li class="btn-radio1"><input type="radio" id="support2"
											name="support" value="DIS" data-support="휴대폰 할인 (24개월)"
											checked="checked"> <label for="support2"
											class="label"> <strong> 휴대폰 가격 할인 <span>(공시
														지원금)</span>
											</strong> <b class="txt-vt"> 총 <span id="publicSupport">-449,900</span>
													원
											</b>
										</label></li>
									</ul>
								</div>
							</dd>
							<dt class="ucashArea">
								<span class="ucash-tit">U폰캐시 할인</span>
								<div class="tooltip-wrap">
									<div class="box-tooltip">
										<button class="btn-tooltip" type="button"></button>
									</div>
									<span class="txt"> 추가혜택 </span>
								</div>
							</dt>
							<dd class="ucashArea">
								<div class="txt-box" id="ucashLoginBtn">
									<p>
										<strong>로그인</strong> 하고 휴대폰 구매할 때 받을 수 있는 더 <strong>
											큰 혜택</strong> 을 확인하세요.
									</p>
								</div>
							</dd>
						</dl>
						<dl class="phone-type-form2">
							<dt>사은품</dt>
							<dd class="box-gift">
								<img
									src="${pageContext.request.contextPath}/resources/img/phone-gift-icon.png">
								<div class="box-btn">
									<p class="speech-bubble">휴대폰 개통 완료하면 사은품을 드립니다.</p>
									<button class="btn-text-right" type="button">사은품 확인하기
									</button>
								</div>
							</dd>
						</dl>
						<!-- 할인 유형 끝 -->
					</div>
				</div>
			</div>
			<!-- 하단 시작 -->
			<div class="box-tab tab-ctrl">
				<ul class="tab-btn-wrap line-tab">
					<li><a href="#" class="on" title="상품정보" aria-selected="true"
						role="tab">상품정보</a></li>
					<li><a href="#" title="상세스펙" aria-selected="true" role="tab"
						class="tab-button" data-tab="specs">상세스펙</a></li>
					<li><a href="#" title="상품후기" aria-selected="false" role="tab"
						class="tab-button" data-tab="reviews">상품후기</a></li>
					<li><a href="#" title="가입안내" aria-selected="false" role="tab">가입안내</a>
					</li>
				</ul>

				<div class="tab-contents-wrap product-view">
					<!-- 상세스펙 섹션 -->
					<div class="tab-content" id="specs" style="display: block;">
						<div class="aria">
							<table class="table-type-04">
								<caption class="hiddden">휴대폰 상세스펙 제공</caption>
								<colgroup>
									<col width="220px">
									<col width="420px">
									<col width="220px">
									<col width="*">
								</colgroup>
								<tbody class="tbody">
									<tr class="tr">
										<th scope="row">제조사</th>
										<td>${product.manufacturer}</td>
										<th scope="row">출시일</th>
										<td>${product.release_Date}</td>
									</tr>
									<tr class="tr">
										<th scope="row">크기</th>
										<td>${product.phone_Size}</td>
										<th scope="row">무게</th>
										<td>${product.phone_Weight}</td>
									</tr>
									<tr class="tr">
										<th scope="row">배터리</th>
										<td>${product.battery}</td>
										<th scope="row">OS</th>
										<td>${product.os}</td>
									</tr>
									<tr>
										<th scope="row">색상</th>
										<td colspan="3">${product.color}</td>
									</tr>
									<tr>
										<th scope="row">CPU</th>
										<td colspan="3">${product.cpu}</td>
									</tr>
									<tr>
										<th scope="row">메모리</th>
										<td colspan="3">${product.memory}</td>
									</tr>
									<tr>
										<th scope="row">디스플레이</th>
										<td colspan="3">${product.display}</td>
									</tr>
									<tr>
										<th scope="row">카메라</th>
										<td colspan="3">${product.camera}</td>
									</tr>
									<tr>
										<th scope="row">기타(옵션)</th>
										<td colspan="3">${product.options}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<!-- 상품후기 섹션 -->
					<div class="tab-content" id="reviews" style="display: none;">
						<div class="review_list_wrap">
							<div class="inner_list" id="gdasList">
								<li>
									<div class="infol">
										<div class="user clrfix">
											<p class="info_user">
												<a class="id">홍길동</a>
											</p>
										</div>
									</div>
									<div class="review_cont">
										<div class="score_area">
											<div class="review_title">
												<span class="point">타이틀 수정</span>
											</div>
											<span class="reg-date">2024-11-11</span>
										</div>
										<p class="item_option">갤럭시 s24</p>
										<div class="txt_inner">좋아요</div>
									</div>
								</li>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- 하단 끝 -->
		<!-- 팝업 시작  -->

		<div class="bottom-layer-pop">
			<button class="bottom-pop-btn" type="button">
				<span class="ico-pop-btn"> 팝업열기 </span>
			</button>
			<div class="bottom-container" id="paymentdetail">
				<div class="bottom-container" id="paymentdetail">
					<div class="show-conts">
						<div class="price-conts sello-prc">
							<div class="price">
								<span id="payment-text"><!-- 부가세포함 월 납부 금액 or 결제금액 --> </span> <strong class="txt-tv"> <span
									id="monthMoneyFeeDw3">${product.price}</span> 원
								</strong>
							</div>
						</div>
						<div class="box-btn btn-conts">
							<div class="ripper-area">
								<p class="sello-bubble">추가 상품권 최대 5만원</p>
								<button class="btns btn-sello" type="button">
									<span> 중고폰 보상 신청하기(시세 조회) </span>
								</button>
							</div>
							<button class="btns1 md-ripples ripples-light" type="button"
								id="mobileJoinBtn" onclick="checkLogin(event)">휴대폰 가입
								신청하기</button>
						</div>
					</div>
				</div>
			</div>

			<!--  팝업 끝  -->
		</div>
		</div>
		
			<!-- 할부개월에 따른 결제금액을 계산해서 hidden으로 전송함 -->
		<input type="hidden" name="uno" id="uno"
			value="${sessionScope.user.uno}"> <input type="hidden"
			name="cno" id="cno" value="${product.cno}"> <input
			type="hidden" name="phonecolor" id="colorField" value=""> <input
			type="hidden" name="installment" id="installmentField" value="">
		<input type="hidden" name="vatPrice" id="vatPriceField" value="">
		
	</form>
	<%@ include file="../includes/subfooter.jsp"%>
</body>
</html>

<script>
const radioButtons = document.querySelectorAll('input[name="color"]');


radioButtons.forEach(button => {
    button.addEventListener('change', function() {
  
        const colorName = this.getAttribute('data-colornm');

        document.querySelector('.box-color-name strong').textContent = colorName;
    });
});


document.querySelectorAll('.tab-btn-wrap a').forEach(tab => {
    tab.addEventListener('click', function (event) {
        event.preventDefault();

        // 모든 탭에서 "on" 클래스를 제거하고, 비활성화 상태로 만듬
        document.querySelectorAll('.tab-btn-wrap a').forEach(tab => {
            tab.classList.remove('on');
            tab.setAttribute('aria-selected', 'false');
        });

        // 클릭한 탭에 "on" 클래스를 추가하고, 활성화 상태로 만듬
        this.classList.add('on');
        this.setAttribute('aria-selected', 'true');

        // 모든 탭 내용 숨기고, 클릭한 탭에 맞는 내용을 표시
        const tabContents = document.querySelectorAll('.tab-content');
        tabContents.forEach(content => content.classList.remove('active'));
        
        const index = Array.from(this.parentElement.children).indexOf(this.parentElement.querySelector('a.on'));
        tabContents[index].classList.add('active');
    });
});


document.querySelectorAll('.tab-button').forEach(button => {
    button.addEventListener('click', event => {
        event.preventDefault(); // 링크 기본 동작 방지

        const targetTab = button.getAttribute('data-tab'); // 클릭된 버튼의 대상 섹션 ID
        const tabs = document.querySelectorAll('.tab-content');
        const buttons = document.querySelectorAll('.tab-button');

        // 모든 섹션 숨기기
        tabs.forEach(tab => tab.style.display = 'none');

        // 모든 버튼 aria-selected 속성 초기화
        buttons.forEach(btn => btn.setAttribute('aria-selected', 'false'));

        // 클릭된 버튼과 해당 섹션 활성화
        document.getElementById(targetTab).style.display = 'block';
        button.setAttribute('aria-selected', 'true');
    });
});



//할부 개월수에 따른 월 납부금액 계산
document.addEventListener("DOMContentLoaded", function() {
	
	  const paymentText = document.getElementById("payment-text");
	 	paymentText.textContent = '결제금액'; 
	 	
    const basePrice = parseInt("${product.price.replace(',', '')}"); // 기본 가격을 가져옵니다.
    const vatRate = 0.1; // 부가세 비율 (10%)
    
    // 월 납부 금액을 계산하는 함수
    function updateMonthlyPrice() {
    	
    	//선택한 할부개월(예: 12개월)
        const selectedMonth = document.querySelector('input[name="devHalbuMonth"]:checked');

    	const monthValue = selectedMonth ? selectedMonth.value : null; // 선택된 할부 개월

    	//해당 휴대폰 상품의 기본 가격을 finalPrice 에 할당
        let finalPrice = basePrice;

      	//선택한 할부개월이 일시불이 아니면,, 기본 가격에 할부개월수를 나눠 finalPrice에 할당함
      
        if (monthValue && monthValue !== '일시불') {
            // 할부가 선택된 경우
            finalPrice = basePrice / parseInt(monthValue);
        }

        // 할부적용한 가격 * 부가세 포함 금액 계산
        const vatPrice = finalPrice * (1 + vatRate);
        
     	// 50원 단위로 올림처리 (소수점 없이 50원 단위로 올림)
        const roundedVatPrice = Math.ceil(vatPrice / 50) * 50;
        
        // 화면에 부가세 포함 월 납부 금액 표시
        document.getElementById("monthMoneyFeeDw3").textContent = roundedVatPrice.toLocaleString();
        
        if (monthValue === '일시불' || monthValue == null) {
            paymentText.textContent = '결제금액'; // '결제금액'으로 변경
        } else {
            paymentText.textContent = '월 납부금액'; // 기본 '월 납부금액'으로 변경
        }
        
     	// VAT 가격을 hidden 필드에 올림된 값 할당
        document.getElementById("vatPriceField").value = roundedVatPrice;
     	
        // 선택된 할부 개월 수를 hidden 필드에 설정
        if (selectedMonth) {
            document.getElementById("installmentField").value = monthValue; // selectedMonth.value 값을 hidden 필드에 넣기
        }
    }

    // 할부 기간 선택 시마다 월 납부 금액을 업데이트
    document.querySelectorAll('input[name="devHalbuMonth"]').forEach(input => {
        input.addEventListener("change", updateMonthlyPrice);
    });

    // 페이지 로드 시 초기 값으로 월 납부 금액 업데이트
    updateMonthlyPrice();
}); // 월 납부 금액 계산 END



//색상 선택 시 hidden 필드에 값 설정
function updateColor() {
    const selectedColor = document.querySelector('input[name="color"]:checked');
    if (selectedColor) {
        document.getElementById('colorField').value = selectedColor.value; // 선택된 색상 값을 hidden 필드에 설정
    }
}

//색상이 변경될 때마다 updateColor 호출
document.querySelectorAll('input[name="color"]').forEach(function(radio) {
    radio.addEventListener('change', updateColor);  // 색상 선택 시마다 호출
});


// 휴대폰 가입 신청하기 - 로그인여부 체크
function checkLogin(event) {
	
    event.preventDefault();  // 폼 제출 방지

    const session = "${sessionScope.user}";
    const selectedColor = document.querySelector('input[name="color"]:checked');  //색상 선택 여부 체크
    const selectedMonth = document.querySelector('input[name="devHalbuMonth"]:checked');    
    
    // 로그인 여부 체크
    if (session !== null && session !== "") {
    	
    	//세션 있을 시 - 색상 선택 여부 체크
    	if(selectedColor !== null) {
    		// 색상 선택 했을 시 - 할부 선택 여부 체크
    		if(selectedMonth !== null){
                // 선택된 값들이 모두 있을 때 폼을 제출
                alert('휴대폰 가입 신청이 완료되었습니다.\n신청내역 페이지로 이동합니다.');
                event.target.form.submit();
    		} else 
    			alert('할부 개월을 선택해주세요.')
    	} else 
    		alert('색상을 선택해주세요.')
    } else {
        // 세션이 없으면 알림 표시
        alert('로그인 후 이용 가능한 서비스입니다.');
        window.location.href = '/user/login';
    }
}

</script>