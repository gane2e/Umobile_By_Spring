<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/joindo.css" rel="stylesheet"/> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<form action="doJoin" method="post" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
                                                                                               
      <h2>회원가입</h2>
      <div class="textForm">
        <input name="email" type="email" class="id" placeholder="아이디">
        <button type="button" onclick="checkEmailDuplication()">아이디 중복 체크</button> <!-- 중복 체크 버튼 -->
      </div>
      <div class="textForm">
        <input name="password" type="password" class="pw" placeholder="비밀번호">
      </div>
       <div class="textForm">
        <input name="passwordConfirm" type="password" class="pw" placeholder="비밀번호 확인">
      </div>
      <div class="textForm">
        <input name="name" type="text" class="name" placeholder="이름">
      </div>
      <div class="textForm">
            <input name="phone" type="text" class="cellphoneNo" placeholder="전화번호" oninput="formatPhoneNumber(this)">
      </div>
      <div class="textForm">
        <input name="addr" type="text" class="addr" placeholder="주소">
      </div>
      <input type="submit" class="btn" value="J O I N"/>
    </form>
    
    <script type="text/javascript">
    // 아이디 중복 체크 함수
    function checkEmailDuplication() {
        let email = $("input[name='email']").val();
        if (email) {
            $.ajax({
                url: "/user/checkEmail",  // 이메일 중복 체크를 위한 URL
                type: "POST",
                data: { email : email },
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",  // 이 부분 추가
                success: function(response) {
                    if (response == "exists") {
                        alert("이미 존재하는 아이디입니다.");
                        $("input[name='email']").val('');  //아이디칸 비움
                    } else {
                        alert("사용 가능한 아이디입니다.");
                    }
                },
                error: function(xhr, status, error) {
                	console.log("AJAX error: " + status + ", " + error); // 에러 확인
                    alert("아이디 중복 체크 실패");
                }
            });
        } else {
            alert("아이디를 입력해주세요.");
        }
    }
    
    // 전화번호 하이픈 자동 포맷 함수
    function formatPhoneNumber(input) {
        let phoneNumber = input.value.replace(/[^\d]/g, ''); // 숫자만 남기고 나머지 문자 제거

        // 전화번호 길이에 따라 하이픈 추가
        if (phoneNumber.length < 4) {
            input.value = phoneNumber;
        } else if (phoneNumber.length < 7) {
            input.value = phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3);
        } else if (phoneNumber.length < 11) {
            input.value = phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3, 6) + '-' + phoneNumber.slice(6);
        } else {
            input.value = phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3, 7) + '-' + phoneNumber.slice(7, 11);
        }
    }
    </script>
</body>
</html>