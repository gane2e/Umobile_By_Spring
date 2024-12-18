<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="${path}/resources/csss/index.css" rel="stylesheet"/> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Noto+Sans+KR:wght@100..900&family=Noto+Sans:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

</head>
<body>
 <%@ include file="./includes/header.jsp"%>
    
    <!--  슬라이더 시작  -->
    
    <div class="slider-container">
        <div class="slider">ㅋ
            <div class="slide">
                <img src="resources/img/slider.png" alt="슬라이드 1">
            </div>
            <div class="slide">
                <img src="resources/img/slider2.png" alt="슬라이드 2">
            </div>
            <div class="slide">
                <img src="resources/img/slider3.png" alt="슬라이드 3">
            </div>
        </div>
        <button class="prev">&#10094;</button>
        <button class="next">&#10095;</button>
    </div>
    <!--  슬라이더 끝  -->
    <!-- 서비스 메뉴 시작 -->
      <div class="sec-service-menu">
         <ul class="meun-list">
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg.png">
                 </div>
                 <strong class="gtm-tracking">셀프개통</strong>
             </a>
           </li>
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg1.png">
                 </div>
                 <strong class="gtm-tracking">가입혜택</strong>
             </a>
           </li>
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg2.png">
                 </div>
                 <strong class="gtm-tracking">요금제 찾기</strong>
             </a>
           </li>
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg3.png">
                 </div>
                 <strong class="gtm-tracking">유심구매</strong>
             </a>
           </li>
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg4.png">
                 </div>
                 <strong class="gtm-tracking">친구 추천</strong>
             </a>
           </li>
           <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/service4.png">
                 </div>
                 <strong class="gtm-tracking">가입신청조회</strong>
             </a>
           </li>
            <li>
             <a href="">
                 <div class="object-box">
                    <img src="resources/img/serviceimg5.png">
                 </div>
                 <strong class="gtm-tracking">셀프서비스</strong>
             </a>
           </li>
         </ul>
      </div>
    <!-- 서비스 메뉴 끝 -->
    <!-- 메인 이벤트 시작  -->
    
    <div id="mainEventBannerArea">
       <div class="gtm-tracking-delay">
        <img src="resources/img/banner.png" alt="0원폰 기획폰"> 
       </div>
        <div class="info gtm-tracking-delayy">
          <strong class="gtmtracking-delay">0원폰 최대 37만원 혜택 이벤트!</strong>
          <p class="tracking-delay">0원폰 최대 37만원 혜택 이벤트!</p>
        </div>
        <div class="day-time">
          <span class="countDays"></span>
        </div>
    </div>
    
    <!-- 메인 이벤트 끝  -->
    
    <!--  event-wrap 시작 -->
    
    <div id="event-wrap">
        <div class="sectin-tit">
            <h2 class="sec-tit">당신에게 필요한 알뜰한 이벤트를 모았어요</h2>
        </div>
        <ul class="list-bnr" id="eventBannerArea">
           <li class="gtm-tracki" id="event_banner_1"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr.png">
               </a>
           </li>
           <li class="gtm-tracki" id="event_banner_2"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr1.png">
               </a>
           </li>
           <li class="gtm-tracki" id="event_banner_3"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr3.png">
               </a>
           </li>
           <li class="gtm-tracki" id="event_banner_4"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr4.jpg">
               </a>
           </li>
           <li class="gtm-tracki" id="event_banner_5"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr5.png">
               </a>
           </li>
           <li class="gtm-tracki" id="event_banner_6"> 
               <a href="#" class="gtm-tracking">
                  <img src="resources/img/bnr6.png">
               </a>
           </li>
        </ul>
    </div>
    
    <!--  event-wrap 끝 -->
   <!--  sec-plan  시작-->
   
    <div class="sec-plan">
        <div class="sec-origin">
           <ul class="tab-btn-wrap">
             <li id="fee_category_1" class="gtm"> 
               <a href="#" class="afee">매월 eBook + 영화 혜택!</a>
             </li>
             <li id="fee_category_1" class="gtm"> 
               <a href="#" class="afee">메이저 최저가 3종!</a>
             </li>
             <li id="fee_category_1" class="gtm"> 
               <a href="#" class="afee">1만원↓ 갓성비 요금제</a>
             </li>
           </ul>
            <div class="plan-view">
                <div class="fee_list">
                    <div class="plan-info">
                       <strong class="plan-txt01">교보문고 북앤무비 (4.5GB+/통화기본)</strong>
                       <strong class="plan-txt02">데이터 4.5GB</strong>
                       <strong class="plan-txt03">소진 시 1Mbps 무제한</strong>
                    </div>
                    <div class="plan-spc">
                      <dl class="spc">
                        <dt class="dt">통화</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                      <dl class="spc">
                        <dt class="dt">문자</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                    </div>
                      <div class="plan-price">
                       <span class="fixed-price">월 36,600원</span>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <span class="disct-price">
                         월
                         <strong class="gtmm">13,900</strong>
                         월
                       </span>
                      </div>  
                      
                      <div class="plan-msg">
                       <p class="box-g">기존 요금제와 같은 가격에 매월 교보 eBook과 롯데시네마 관람권 혜택 받으세요! 
                       지금 가입하면 최대 5만원 상당 추가 혜택까지</p>
                      </div>
                </div>
                <div class="fee_list">
                    <div class="plan-info">
                       <strong class="plan-txt01">교보문고 북앤무비 (10GB+/통화기본)</strong>
                       <strong class="plan-txt02">데이터 10GB</strong>
                       <strong class="plan-txt03">소진 시 1Mbps 무제한</strong>
                    </div>
                    <div class="plan-spc">
                      <dl class="spc">
                        <dt class="dt">통화</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                      <dl class="spc">
                        <dt class="dt">문자</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                    </div>
                      <div class="plan-price">
                       <span class="fixed-price">월 42,950원</span>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <span class="disct-price">
                         월
                         <strong class="gtmm">19,900</strong>
                         월
                       </span>
                      </div>  
                      
                      <div class="plan-msg">
                       <p class="box-g">기존 요금제와 같은 가격에 매월 교보 eBook과 롯데시네마 관람권 혜택 받으세요! 
                       지금 가입하면 최대 5만원 상당 추가 혜택까지</p>
                      </div>
                </div>
                 <div class="fee_list">
                    <div class="plan-info">
                       <strong class="plan-txt01">교보문고 북앤무비 (71GB+/통화기본)</strong>
                       <strong class="plan-txt02">11GB+일2GB</strong>
                       <strong class="plan-txt03">소진 시 1Mbps 무제한</strong>
                    </div>
                    <div class="plan-spc">
                      <dl class="spc">
                        <dt class="dt">통화</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                      <dl class="spc">
                        <dt class="dt">문자</dt>
                        <dd class="dd">기본제공</dd>
                      </dl>
                    </div>
                      <div class="plan-price">
                       <span class="fixed-price">월 49,390원</span>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <span class="disct-price">
                         월
                         <strong class="gtmm">33,900</strong>
                         월
                       </span>
                      </div>  
                      
                      <div class="plan-msg">
                       <p class="box-g">기존 요금제와 같은 가격에 매월 교보 eBook과 롯데시네마 관람권 혜택 받으세요! 
                       지금 가입하면 최대 5만원 상당 추가 혜택까지</p>
                      </div>
                </div>
            </div>
        </div>
     </div>
   <!--  sec-origin  끝-->

 <!--box-tab02 시작  -->
   
   <div id="box-tab02">
     <ul class="tab-btn-wra">
         <li class="phone_category_1" id="gtm-l">
           <a class="gtm-t">BEST TOP3</a>
         </li>
          <li class="phone_category_1" id="gtm-l">
           <a class="gtm-t">인기 갤럭시폰</a>
         </li>
          <li class="phone_category_1" id="gtm-l">
           <a class="gtm-t">인기 아이폰</a>
         </li>
     </ul>
     
     <div class="slick-lis">
       <div class="phone_list">
          <div class="item-img">
           <img src="resources/img/samsong.png"> 
          </div>
          <div class="item-title">
             <strong class="tit-gtm">삼성 갤럭시 A35</strong>
             <br>
             <span class="tit-gt">5G (5GB/3000분)</span>
          </div>
          <div class="item-pricel">
            <dl class="dll">
               <dt class="dtt">월 단말 요금</dt>
               <dd class="dddd">0원</dd>
            </dl>
             <dl class="dll">
               <dt class="dtt">월 통신요금</dt>
               <dd class="dddd">25,450원</dd>
            </dl>
          </div>
          <div class="priceing">
             <span class="selling-prince">
             월 
             <strong class="terak">25,400</strong>
             원
             </span>
           </div>
       </div>
       
       <div class="phone_list">
          <div class="item-img">
           <img src="resources/img/item0img.png"> 
          </div>
          <div class="item-title">
             <strong class="tit-gtm">(중고S급) 아이폰 14 128G</strong>
             <br>
             <span class="tit-gt">5G (5GB/200분)</span>
          </div>
          <div class="item-pricel">
            <dl class="dll">
               <dt class="dtt">월 단말 요금</dt>
               <dd class="dddd">11,850원</dd>
            </dl>
             <dl class="dll">
               <dt class="dtt">월 통신요금</dt>
               <dd class="dddd">23,500원</dd>
            </dl>
          </div>
          <div class="priceing">
             <span class="selling-prince">
             월 
             <strong class="terak">35,350</strong>
             원
             </span>
           </div>
       </div>
       
       <div class="phone_list">
          <div class="item-img">
           <img src="resources/img/itemimg3.png"> 
          </div>
          <div class="item-title">
             <strong class="tit-gtm">Redmi Note 13 256G</strong>
             <br>
             <span class="tit-gt">LTE (2GB/120분)</span>
          </div>
          <div class="item-pricel">
            <dl class="dll">
               <dt class="dtt">월 단말 요금</dt>
               <dd class="dddd">0원</dd>
            </dl>
             <dl class="dll">
               <dt class="dtt">월 통신요금</dt>
               <dd class="dddd">19,000원</dd>
            </dl>
          </div>
          <div class="priceing">
             <span class="selling-prince">
             월 
             <strong class="terak">19,000</strong>
             원
             </span>
           </div>
       </div>
      
     </div>
   </div>
 <!--box-tab02 끝  -->
 
  <!-- phone-moer 시작 -->
   <div class="phone-moer">
      <div class="moreBtn">
        <a href="#"><img src="resources/img/iphonemore.png"></a>
      </div>
      
      <div class="moreBtn">
       <a href="#"><img src="resources/img/galaxymore.png"></a>
      </div>
   </div>
  <!-- phone-moer 끝 -->
  
  <!-- subscript 시작  -->
  
<div id="subscript">
  <div class="subscript-tit">
    <h2 class="sec-tit">포인트로 돌려받는 구독 서비스</h2>
    <div class="more-btn">
      <a href="#" id="subscribe_all_btn">구독 서비스 전체보기</a>
    </div>
  </div>
<div class="slider-l"> 
  <!-- 슬라이드 시작 -->
<div class="subsBannerArea">
  <div class="top-slider">
      <!-- 상단 슬라이드용 -->
    <div class="subscription-box top-slider-box"> 
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king1.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king2.png"> </a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king3.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king4.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king5.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king6.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king1.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king2.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king3.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king4.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king5.png"></a></div>
      <div class="MAIN"><a href="#" class="king"><img src="resources/img/king6.png"></a></div>
    </div>
  </div>
</div>

<div class="subsBannerArea2">
  <div class="bottom-slider">
      <!-- 하단 슬라이드-->
    <div class="subscription-box bottom-slider-box"> 
      <div class="MAIN"><a href="#"><img src="resources/img/king.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king1.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king2.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king3.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king4.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king5.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king6.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king1.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king2.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king3.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king4.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king5.png"></a></div>
      <div class="MAIN"><a href="#"><img src="resources/img/king6.png"></a></div>
      
       </div>
      </div>
    </div>
  </div>
</div>
  
  <!-- subscript 끝  -->
  
  <!-- sec-or 시작 -->
   <div class="sec-or">
      <div class="sectin-tit">
      <h2 class="sec-tit">궁금하신 내용은 편하게 문의해주세요</h2>
      </div>
      
      <div class="btm-wrap">
         <div class="sec-inquire">
           <a href="#" id="ask">
            <span class="categ">
             <img src="resources/img/ico-inquire01.svg">
            </span>
            <span class="txtt">
             <strong class="tttx">1:1 문의하기</strong>
             <span class="tttx">
             주말 및 공휴일은<br>1:1 문의하기를 이용해주세요
             </span>
            </span>
           </a>
           <a href="#" id="ask">
            <span class="categ">
             <img src="resources/img/ico-inquire02.svg">
            </span>
            <span class="txtt">
             <strong class="tttx">자주하는 질문</strong>
             <span class="tttx">
             궁금하신 내용을<br>바로 확인할 수 있어요
             </span>
            </span>
           </a>
           <a href="#" id="ask">
            <span class="categ">
             <img src="resources/img/ico-inquire05.svg">
            </span>
            <span class="txtt">
             <strong class="tttx">24시간 챗봇 상담</strong>
             <span class="tttx">
             챗봇을 통해 언제든지<br>궁금한 사항을 물어보세요
             </span>
            </span>
           </a>
           <a href="#" id="ask">
            <span class="categ">
             <img src="resources/img/ico-inquire06.svg">
            </span>
            <span class="txtt">
             <strong class="tttx">유모바일 활용 가이드</strong>
             <span class="tttx">
             아주 쉽게 유모바일<br>사용 방법을 알려드려요.
             </span>
            </span>
           </a>
         </div>
         
         
      </div>
   </div>
  
  <!-- sec-or 끝 -->
  
  <!-- qr  시작 -->
  <div class="se-qr">
    <span class="img">
      <img src="resources/img/qr-app-down.svg">
    </span>
    <strong class="appst">APP 다운로드</strong>
    <p class="qrp">
    모바일앱으로 더 빠르고<br>
    쉽게 요금제를 관리하세요
    </p>
  </div>
  <!-- qr  끝 -->
  
  <%@ include file="./includes/mainfooter.jsp"%>
</body>
</html>
 <script>
 

 
 
document.addEventListener('DOMContentLoaded', function () {
    var i = 0;
    var slideCount = 1; // 한 번에 보여줄 슬라이드 수
    var slides = document.querySelectorAll('.slider .slide');
    var totalSlides = slides.length;
    var slideInterval;

    // 초기 슬라이드 숨기기
    for (var j = slideCount; j < totalSlides; j++) {
        slides[j].style.display = 'none';
    }

    // 슬라이드 업데이트 함수
    function updateSlider() {
        // 현재 슬라이드를 숨기고, 새로운 슬라이드를 표시
        for (var j = 0; j < totalSlides; j++) {
            slides[j].style.display = 'none';
        }
        // 슬라이드를 표시
        for (var j = i; j < i + slideCount && j < totalSlides; j++) {
            slides[j].style.display = 'block';
        }
    }

    // 이전 버튼 클릭
    document.querySelector('.prev').addEventListener('click', function () {
        i = (i === 0) ? totalSlides - slideCount : i - slideCount;
        updateSlider();
        restartAutoSlide(); // 버튼 클릭 시 자동 슬라이드 재시작
    });

    // 다음 버튼 클릭
    document.querySelector('.next').addEventListener('click', function () {
        i = (i === totalSlides - slideCount) ? 0 : i + slideCount;
        updateSlider();
        restartAutoSlide(); // 버튼 클릭 시 자동 슬라이드 재시작
    });

    // 자동 슬라이드 함수
    function startAutoSlide() {
        slideInterval = setInterval(function () {
            i = (i === totalSlides - slideCount) ? 0 : i + slideCount;
            updateSlider();
        }, 5000); // 5초 간격으로 슬라이드 전환
    }

    // 자동 슬라이드 재시작
    function restartAutoSlide() {
        clearInterval(slideInterval); // 기존 타이머 중단
        startAutoSlide(); // 새 타이머 시작
    }

    // 초기 상태 및 자동 슬라이드 시작
    updateSlider();
    startAutoSlide();
});


/* d-day 카운트 */
   $(document).ready(function(){
	   
	   var endDate = new Date("2024-12-31T23:59:59");
	   var countdownElement = $('.countDays');
	   
	   function updateCountdown(){
		   var now = new Date();
		   var timeDiff = endDate - now;
		   
		   if(timeDiff > 0){
			   var days = Math.floor(timeDiff / (1000 * 60 * 60 * 24));
			   countdownElement.text('D-' + days);
		   }else{
				   countdownElement.text('D-Day');
			   
		   }
	   }
	   updateCountdown();
	   setInterval(updateCountdown, 1000);
   });
/* d-day 카운트 끝 */

 
/*  중간 슬라이드 */



  /* 클릭시 밑선 데이터 */
  
  /* 핸드폰 및선 */
  document.addEventListener('DOMContentLoaded', () => {
    const links = document.querySelectorAll('.tab-btn-wra .gtm-t');
    links.forEach(link => {
      link.addEventListener('click', function(e) {
        e.preventDefault();
        links.forEach(l => l.classList.remove('active'));
        this.classList.add('active');
      });
    });
  });
  
  /* 핸드폰 및선 끝 */
</script>