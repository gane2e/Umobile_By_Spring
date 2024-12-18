<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/UserEdit.css" rel="stylesheet" />
<link href="${path}/resources/csss/subindex.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="Edit-wrap">
		<div class="sub-conts join util-width find-finish" id="mainUserUpdate">
			<div class="page-tit">
				<h1>회원정보 수정</h1>
			</div>
			<div class="cardList-wrap">
				<h3 class="cardList-title">가입정보 변경</h3>
				<div class="cardList">
					<form action="/user/update" method="post"  onsubmit="return checkPassword()">
						<div class="box-input">
							<label for="phoneNum" class="input-label">이메일(아이디)</label>
							<div class="input-wrap">
								<input id="email" name="email" type="text" value="${user.email}"
									class="input-default is-delete" readonly>
							</div>
						</div>
						<div class="box-input">
							<label for="phoneNum" class="input-label">이름</label>
							<div class="input-wrap">
								<input id="name" name="name" type="text" value="${user.name}"
									class="input-default is-delete" readonly>
							</div>
						</div>
						<div class="box-input">
							<label for="phoneNum" class="input-label">비밀번호</label>
							<div class="input-wrap">
								<input id="password" name="password" type="password"
									class="input-default is-delete">
							</div>
						</div>
						<!-- 추가 -->
						<div class="box-input">
							<label for="phoneNum" class="input-label">비밀번호 확인</label>
							<div class="input-wrap">
								<input id="passwordConfirm" name="passwordConfirm"
									type="password" class="input-default is-delete">
							</div>
						</div>
						<div class="box-input">
							<label for="phoneNum" class="input-label">전화번호</label>
							<div class="input-wrap">
								<input id="phone" name="phone" type="text" value="${user.phone}"
									class="input-default is-delete">
							</div>
						</div>
						<div class="box-input">
							<label for="phoneNum" class="input-label">주소</label>
							<div class="input-wrap">
								<input id="addr" name="addr" type="text" value="${user.addr}"
									class="input-default is-delete">
							</div>
						</div>
						<button class="btns md-ripples ripples-light" type="submit">회원정보
							수정</button>
					</form>
				</div>
				<div class="btn-group">

					<button class="btns md-ripples ripples-light" type="reset">다시
						작성하기</button>
					<form action="/user/delete" method="POST"
						onsubmit="return confirm('정말로 탈퇴하시겠습니까?');">
						<button class="btns1 md-ripples ripples-light" onclick=""
							type="submit">회원 탈퇴</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../includes/subfooter.jsp"%>

	<script type="text/javascript">
		// 비밀번호 확인 함수
		function checkPassword() {
			var password = document.getElementById('password').value;
			var passwordConfirm = document.getElementById('passwordConfirm').value;

			// 비밀번호와 비밀번호 확인 값이 일치하지 않으면 알림창을 띄움
			if (password !== passwordConfirm) {
				alert("비밀번호가 일치하지 않습니다.");
				document.getElementById('password').value = ''; // 비밀번호 입력란 값 비우기
				document.getElementById('passwordConfirm').value = ''; // 비밀번호 확인란 값 비우기
				return false; // 폼 제출X

			}
			if (password == passwordConfirm) {
				let confirmUpdate = confirm("회원정보를 수정하시겠습니까?")
				if (confirmUpdate) {
					alert("수정이 완료되었습니다.");
				} else
					return false;
				return true; // 폼 제출O
			}
		}
	</script>



</body>
</html>