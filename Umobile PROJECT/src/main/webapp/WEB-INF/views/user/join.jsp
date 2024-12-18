<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/joindo.css" rel="stylesheet" />
<link href="${path}/resources/csss/subindex.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div id="login-warp">
		<div class="sub-conts login util-width login-info">
			<div class="page-tit">
				<h1>회원가입</h1>
			</div>
			<div class="rq-form">
				<div class="main-txt-group">
					<h2 class="main-txt"></h2>
				</div>
				<form action="doJoin" method="post" id="signupForm">
					<div id="divid" class="box-input">
						<div class="input-wrap">
							<input id="email" type="text" name="email"
								placeholder="이메일(아이디)를 입력해주세요" class="input-default is-delete"
								title="email">
							<button class="Btn-1" type="button"
								onclick="checkEmailDuplication()">중복확인</button>
						</div>
						<div class="input-wrap">
							<input id="name" type="text" name="name" placeholder="이름을 입력하세요"
								class="input-default is-delete" title="name">
						</div>
						<div class="input-wrap">
							<input id="password" type="password" name="password"
								placeholder="비밀번호 를 입력하세요" class="input-default is-delete"
								title="password">
						</div>
						<div class="input-wrap">
							<input id="passwordConfirm" type="password"
								name="passwordConfirm" placeholder="비밀번호 를 한번 더 입력하세요"
								class="input-default is-delete" title="password">
						</div>
						<div class="input-wrap">
							<input id="phone" type="text" name="phone"
								placeholder="핸드폰 번호 를 입력하세요" class="input-default is-delete"
								title="phone" oninput="formatPhoneNumber(this)">
						</div>
						<div class="input-wrap">
							<input id="addr" type="text" name="addr" placeholder="주소 를 입력하세요"
								class="input-default is-delete" title="addr">
						</div>
					</div>
					<button class="btns wid md-ripples ripples-light" type="button"
						onclick="signupFormSubmit()">회원가입</button>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../includes/subfooter.jsp"%>
</body>
</html>
<script>
	function signupFormSubmit() {
		// 폼 요소 가져오기
		const email = document.getElementById('email').value.trim();
		const name = document.getElementById('name').value.trim();
		const password = document.getElementById('password').value.trim();
		const passwordConfirm = document.getElementById('passwordConfirm').value
				.trim();
		const phone = document.getElementById('phone').value.trim();
		const addr = document.getElementById('addr').value.trim();

		// 유효성 검사
		if (!validateEmail(email)) {
			alert('유효한 이메일 주소를 입력하세요.');
			return;
		}

		if (name === '') {
			alert('이름을 입력하세요.');
			return;
		}

		if (password.length < 8) {
			alert('비밀번호는 최소 8자 이상이어야 합니다.');
			return;
		}

		// 비밀번호와 비밀번호 확인 값이 일치하지 않으면 알림창을 띄움
		if (password !== passwordConfirm) {
			alert("비밀번호가 일치하지 않습니다.");
			document.getElementById('password').value = ''; // 비밀번호 입력란 값 비우기
			document.getElementById('passwordConfirm').value = ''; // 비밀번호 확인란 값 비우기
			return; 
		}
/* 		if (!validatePhone(phone)) {
			alert('유효한 휴대폰 번호를 입력하세요.');
			return;
		} */

		if (addr === '') {
			alert('주소를 입력하세요.');
			return;
		}

		// 유효성 검사를 모두 통과하면 폼 제출
		alert('회원가입이 완료되었습니다.');
		document.getElementById('signupForm').submit(); // 폼을 수동으로 제출
	}

	function validateEmail(email) {
		const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		return regex.test(email);
	}

	function validatePhone(phone) {
		const regex = /^\d{12,13}$/; // 10~11자리 숫자만 허용
		return regex.test(phone);
	}

	function checkEmailDuplication() {
		let email = $("input[name='email']").val();
		if (email) {
			$
					.ajax({
						url : "/user/checkEmail", // 이메일 중복 체크를 위한 URL
						type : "POST",
						data : {
							email : email
						},
						contentType : "application/x-www-form-urlencoded; charset=UTF-8", // 이 부분 추가
						success : function(response) {
							if (response == "exists") {
								alert("이미 존재하는 아이디입니다.");
								$("input[name='email']").val(''); //아이디칸 비움
							} else {
								alert("사용 가능한 아이디입니다.");
							}
						},
						error : function(xhr, status, error) {
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
			input.value = phoneNumber.slice(0, 3) + '-'
					+ phoneNumber.slice(3, 6) + '-' + phoneNumber.slice(6);
		} else {
			input.value = phoneNumber.slice(0, 3) + '-'
					+ phoneNumber.slice(3, 7) + '-' + phoneNumber.slice(7, 11);
		}
	}
</script>