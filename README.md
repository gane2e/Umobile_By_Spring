## 🔖 목차
1. [🚩 프로젝트 소개](#프로젝트-소개)
2. [🙋‍♀️ 프로젝트 참여자](#프로젝트-참여자)
3. [🛠 개발환경](#개발환경)
4. [🕶 기술소개](#기술소개)
5. [📷 프로젝트 보고서](#프로젝트-보고서)
6. [📑 다이어그램](#다이어그램)
7. [📔 개발일정 및 작업관리](#개발일정-및-작업-관리)
8. [🎥 시연영상](#시연영상)
9. [💥 Trouble Shooting](#troubleshooting)
10. [📝 프로젝트 소감](#프로젝트-소감)

## 🚩프로젝트 소개
- ### U+Mobile 휴대폰 판매 사이트
  ✔ 관리자가 등록 한 휴대폰 상품을 회원이 조회하고, 휴대폰 가입신청 시 해당 제품의 리뷰를 작성할 수 있습니다. <br />
  ✔ HttpSession을 활용한 사용자, 관리자의 session관리 및 로그인 처리를 하였습니다. <br />
  ✔ 회원은 휴대폰 가입신청, 리뷰 작성, 회원정보 수정, 회원탈퇴, 로그아웃을 할 수 있습니다. <br />
  ✔ 관리자는 휴대폰 상품등록, 공지사항 등록/수정/삭제, 


## 🙋‍♀프로젝트 참여자
|FrontEnd|BackEnd|BackEnd|
|------|---|---|
|테스트1|테스트2|테스트3|
|테스트1|테스트2|테스트3|
|테스트1|테스트2|테스트3|


## 🛠개발환경


## 🕶기술소개
### Spring Security
- Spring Security를 사용해 웹페이지의 보안을 강화하고, "비회원", "회원", "관리자" 경로별 접근 권한을 SecurityConfig 클래스로 관리하였습니다.
- OAuth2 기반 소셜 로그인과의 통합을 위해 UserDetails, OAuth2User를 커스텀하여 소셜로그인과 일반로그인 동작을 동일하게 할 수 있도록 하였습니다.
  
### Spring Boot JPA 
- JPA Repository에서 제공하는 CRUD 메서드를 활용하여 SQL 작업을 간편하게 처리하였습니다.
- JPQL을 이용하여 동적 쿼리 작성 및 재사용성과 유지보수성을 향상시켰습니다.

### ⛵️ API
- **VideoJs** <br/>
VideoJS API를 활용하여 사용자의 마지막 시청초를 추적하고, 영상의 길이를 계산하여 총 진도율을 계산하는 기능을 구현하였습니다.
- **VideoJs** <br/>
API에서 제공하는 메서드를 활용해 영상별 총길이를 구하여 해당 교육과정의 영상길이 합산 초 및 사용자가 총 시청한 시점을 추적하는 기능을 구현하였습니다.
- **Fetch** <br/>
영상 종료 시점이나 영상 일시정지 시, 마지막 시청 초를 FETCH API를 통해 서버로 전송하여 비동기 통신을 구현하고 진도율을 실시간으로 저장하도록 하며, 성공/실패에 따른 예외처리를 다양하게 할수있도록 하였습니다.
- **Slick** <br/>
Slick 슬라이드 API를 사용하여 자동 슬라이드 기능과 화면에 표시되는 슬라이드 수를 직접 조정할 수 있어, 개발 시간을 단축하고 효율성을 높였습니다.
- **Kakao, Google, Naver** <br/>
카카오, 네이버, 구글 소셜로그인을 통해 사용자가 손쉽게 로그인할 수 있도록 하며,  OAuth2를 기반으로 한 보안 로그인을 적용하여 사용자 인증을 처리했습니다.


## 프로젝트 보고서
<details>
   <summary>프로젝트 보고서</summary>

   <img src="https://github.com/user-attachments/assets/f43cc93a-fbdc-475b-8484-84ed0f96851e" width="400px">
<img src="https://github.com/user-attachments/assets/4991131c-f02e-4e87-8b25-c111dfe73610" width="400px">
<img src="https://github.com/user-attachments/assets/1e4ac332-39e8-4d88-8928-2deb71ae9e41" width="400px">
<img src="https://github.com/user-attachments/assets/5649394c-f52d-4d84-b4d6-cbdaf346e6f0" width="400px">
<img src="https://github.com/user-attachments/assets/b803aa9d-7124-45d3-8423-b0d9167f3f5b" width="400px">
<img src="https://github.com/user-attachments/assets/16a92348-2f10-4511-a588-9e849ba662a6" width="400px">
<img src="https://github.com/user-attachments/assets/260865d5-25e9-4b88-b06c-d1251ae975a6" width="400px">
<img src="https://github.com/user-attachments/assets/ab2e2f53-4cee-4a6d-aa7a-0777b3df63c8" width="400px">
<img src="https://github.com/user-attachments/assets/a938981a-201b-4831-9636-db6f4997b01b" width="400px">
<img src="https://github.com/user-attachments/assets/6400802c-fce0-425a-a191-cfeb05ed86b5" width="400px">
<img src="https://github.com/user-attachments/assets/0dcc8d84-0fc7-4314-9244-149896fa419a" width="400px">
<img src="https://github.com/user-attachments/assets/fa71d77c-c082-4843-aaa2-30c67afd6df8" width="400px">
<img src="https://github.com/user-attachments/assets/0380e77c-617a-4e6d-ad4a-a5395df07363" width="400px">
<img src="https://github.com/user-attachments/assets/3d62c40b-3451-4bf6-a6db-2678f1c8e15c" width="400px">
<img src="https://github.com/user-attachments/assets/642cb442-e9d0-4534-9893-2a159d66eaf1" width="400px">
<img src="https://github.com/user-attachments/assets/e6ec431a-43c6-480d-a01f-9be80e1cb7eb" width="400px">
<img src="https://github.com/user-attachments/assets/8adc50b1-1b45-40a8-a8fd-3ea900085767" width="400px">
<img src="https://github.com/user-attachments/assets/5b4912ca-36da-4680-9ce0-c3218a589a5a" width="400px">
<img src="https://github.com/user-attachments/assets/2ca565c8-3a30-4f5d-a9ac-c999d08b689d" width="400px">
<img src="https://github.com/user-attachments/assets/e5322d3f-7383-4c6e-b07f-be83d001a566" width="400px">
<img src="https://github.com/user-attachments/assets/82f2f9ce-b818-4bf5-90bb-7a5c04562c52" width="400px">
<img src="https://github.com/user-attachments/assets/1c8563ee-3a39-4a6c-9a14-1311c2b85495" width="400px">
<img src="https://github.com/user-attachments/assets/6e511c60-1654-48bf-bd8a-69bb56825467" width="400px">
<img src="https://github.com/user-attachments/assets/849a8250-24f7-4ba4-b643-d5cfe5f94630" width="400px">
<img src="https://github.com/user-attachments/assets/9418e12d-e589-41b2-8adc-9c6c9a8e1196" width="400px">
<img src="https://github.com/user-attachments/assets/ec6d2089-e778-4bc3-91b3-459bc376afd8" width="400px">
<img src="https://github.com/user-attachments/assets/4ce31be0-1ff5-479a-9645-beb63b21fa8d" width="400px">
<img src="https://github.com/user-attachments/assets/74756caf-3d8b-4f19-87ba-149641ff8e5f" width="400px">
<img src="https://github.com/user-attachments/assets/ad9d03dc-3e61-4143-91cd-bdc0a600b785" width="400px">
<img src="https://github.com/user-attachments/assets/4ee3d6fc-4e82-4275-a189-9492566d68a2" width="400px">
<img src="https://github.com/user-attachments/assets/d90cf585-d8ed-49b9-9216-13e0462f552a" width="400px">
<img src="https://github.com/user-attachments/assets/bd103f22-0344-4d15-839f-dba39e189203" width="400px">
<img src="https://github.com/user-attachments/assets/afdc46da-0ab3-408b-ada0-c2d8c2e850db" width="400px">
<img src="https://github.com/user-attachments/assets/17b668e1-673e-4beb-9f10-a7e4e246ec80" width="400px">
<img src="https://github.com/user-attachments/assets/81eefeff-684f-4767-ac0c-4dcb958baf9f" width="400px">
<img src="https://github.com/user-attachments/assets/630a8592-2aaa-4571-b4cc-7b1cb9eef862" width="400px">
<img src="https://github.com/user-attachments/assets/60b6495c-1c2f-45d1-ae97-f3e49a54a66c" width="400px">
<img src="https://github.com/user-attachments/assets/82e8879b-7989-40ad-a4e4-266361ed2321" width="400px">
<img src="https://github.com/user-attachments/assets/23de3403-ea87-43f9-b947-7ebdf00f46ad" width="400px">
<img src="https://github.com/user-attachments/assets/3fbf6f45-5e99-4c2e-9afc-41cd8b937529" width="400px">
<img src="https://github.com/user-attachments/assets/b819377f-09b3-4639-8f00-05127434c97d" width="400px">
<img src="https://github.com/user-attachments/assets/f5a56951-553b-4bd0-96c4-842d8b72cd4f" width="400px">
<img src="https://github.com/user-attachments/assets/e9001f3d-0be1-41ec-96f4-0a9c6d9b3bc9" width="400px">
<img src="https://github.com/user-attachments/assets/dea63be3-d3fe-4483-84d6-00b1d01f2181" width="400px">
<img src="https://github.com/user-attachments/assets/4d52835d-daa0-4fc1-a950-fe8cd13088b4" width="400px">
<img src="https://github.com/user-attachments/assets/6ce894ce-2f95-4f83-a2c7-c976573d4c74" width="400px">
<img src="https://github.com/user-attachments/assets/b786b579-5dcd-4bb7-b8bc-a565790ea7cf" width="400px">
<img src="https://github.com/user-attachments/assets/c4e06929-270e-4afe-af78-ac40a343b9a2" width="400px">
<img src="https://github.com/user-attachments/assets/3c34bc94-be12-47ed-90a9-1bb518a8eb56" width="400px">
<img src="https://github.com/user-attachments/assets/a9d59cac-6b9d-444e-88cf-2672b5a05f35" width="400px">
<img src="https://github.com/user-attachments/assets/787b87d2-7c61-4bc1-90cc-3b32739cd9e6" width="400px">
<img src="https://github.com/user-attachments/assets/34f9f330-ebed-4ec4-8a5d-8410fdf07682" width="400px">
<img src="https://github.com/user-attachments/assets/9d56137a-95b8-4acd-8660-a3a19dc8987d" width="400px">

</details>

## 📑다이어그램
<details>
   <summary>ER다이어그램</summary>
   <img src="https://github.com/user-attachments/assets/71389521-253a-49c6-ade3-9f3b050b626e" width="800px"></br>
</details>
<details>
   <summary>액티비티 다이어그램</summary>
   <img src="https://github.com/user-attachments/assets/34801402-bae3-48a0-bb1e-781a642cd6c2" width="800px"></br>
</details>

## 개발일정 및 작업 관리
- 전체 개발 기간 : 2024-12-24 ~ 2025-01-15
- UI 구현 : 2024-12-24 ~ 2025-01-10
- 기능 구현 : 2024-12-24 ~ 2022-01-14
- 작업 관리 : 노션(https://www.notion.so/13ec99b9b63e80c6bf3fdf2fee349c64?v=15ec99b9b63e80a6a421000c70dbd718)

## 🎥시연영상
### ✔교육영상 등록
- 1차>2차 카테고리 선택하여 교육영상을 등록
- 등록한 영상은 교육과정 등록 시 선택한 카테고리에 따라 영상 불러오기 가능
<img src="https://github.com/user-attachments/assets/7ef30cd0-1078-4245-bc3b-d2c78875c69a" width="800px"></br>

### ✔교육과정 등록
- 1차>2차 카테고리 선택하여 교육과정을 등록
- 선택한 카테고리에 등록된 영상목록을 선택 가능
<img src="https://github.com/user-attachments/assets/c2b9f1ff-4ed6-44b0-b297-364647b75400" width="800px"></br>


### ✔메인 페이지
- 메인비주얼 : slick 슬라이드 API를 사용하여 최근 등록된 교육과정 5개를 AUTO슬라이드
- 교육과정 검색기 : 교육과정명을 입력하여 검색된 페이지로 이동<br />
해시태그는 관리자가 교육 등록 시 입력한 해시태그를 DB에 저장하여 가장 많이 등록된(중복수가 가장 높은)순으로 5개 노출
- 가장 많이 신청한 교육 리스트 : 교육과정의 신청자가 많은 순으로, 신청자 수가 같을 시 최근 등록된 순으로 1차>2차정렬
<img src="https://github.com/user-attachments/assets/d1cb3100-49c8-4a77-b950-53ad7e6ae815" width="800px"></br>

### ✔회원가입
- 아이디 입력 후 "중복확인" 클릭 시 사용자가 입력 한 ID를 JSON형태(key,Value)로 FetchAPI 통신을 POST 방식으로 요청 <br />서버에서 아이디 중복체크 후 반환된 "true", "false" 값으로 중복 여부에따른 success 로직을 실행
- 회원가입 버튼 클릭 시 자바스크립트의 유효성검사 함수를 실행<br /> 각 입력폼이 빈 문자열인지 또는 형식에 맞지않는지 검사<br />
<img src="https://github.com/user-attachments/assets/9625332e-4a5d-49c5-9ed0-10d0f6ff3d8d" width="800px"></br>
### ✔로그인
- 아이디 및 비밀번호는 html태그 속성 중 required를 사용하여 "폼 제출 전 반드시 채워져있어야 하는 필드"임을 명시
- 스프링 시큐리티를 통해 로그인처리
<img src="https://github.com/user-attachments/assets/003fcb9f-c72e-4bb8-8fdb-03c8bd63924e" width="800px"><br />
### ✔수강신청
- 검색기를 통해 카테고리 및 키워드 검색이 가능하며, 회원일 시 수강신청 가능
- 교육 상세페이지에서 해당 교육과정의 영상 미리보기 가능 (진도율 저장X)
<img src="https://github.com/user-attachments/assets/579a5b9a-0d7e-4724-b6ef-999fde0a30c5" width="800px"> <br />

### ✔영상 학습하기
- 해당 교육과정에 등록 된 영상 목록을 조회할 수 있으며, 영상은 1번부터 순차적으로 이수 필요
- 조회중인 영상을 100% 시청하지 않았을 시 다음영상 실행 불가 / 총 이수율이 100%가 아닐 시 시험보기 불가
<img src="https://github.com/user-attachments/assets/15573d41-c22b-4855-87ac-63b384138b9f" width="800px"></br>


### ✔시험보기(불합격)
- 이수율 100%시 시험 응시 가능
- 시험 문제는 DB에 더미데이터 생성(카테고리값 + 문제) 하여 해당 교육과정과 동일한 카테고리로 등록 된 시험문제를 랜덤출제
- 합격기준 : 60점 / **최대 3번까지 응시 가능하며 3번 다 불합격일 시 진도율 0%로 초기화**
<img src="https://github.com/user-attachments/assets/04105d26-db0d-4e75-a7d6-c10f983ecf52" width="800px"></br>

### ✔시험보기(합격)
- 시험 합격 시 별점 등록 후 수료증 출력 가능
- 대시보드로 이동하면 [수료증] 버튼 활성화
<img src="https://github.com/user-attachments/assets/f554d635-b684-4793-90b5-c306b242ef54" width="800px"></br>

### ✔수료증 출력
- 수료증 버튼 클릭 시 js파일로 설정해 둔 수료증 html 출력
- 회원명, 생년월일, 교육과정명, 수료일자, 수료번호 데이터 연결
- 수료증 인쇄/PDF 저장가능
<img src="https://github.com/user-attachments/assets/2a7047ec-fcdc-4f41-9c4d-78d1c1ab8af7" width="800px"></br>

### ✔아이디 찾기
- 회원가입 시 입력 한 이메일을 입력하면 해당 이메일로 가입된 계정이 있는지 체크
- 계정이 있으면 해당 이메일로 인증번호 발송
- 메일로 발송된 인증번호를 확인후 **3분내로** 정확히 입력 시 가입된 계정의 ID View
<img src="https://github.com/user-attachments/assets/031bb090-cc62-41b2-94a3-3a8a9e9b0973" width="800px"></br>

### ✔비밀번호 찾기
- 계정의 ID를 입력하면 해당 ID로 가입된 계정이 있는지 체크
- 계정이 있으면 해당 계정에 등록된 이메일로 인증번호 발송
- 메일로 발송된 인증번호를 확인후 **3분내로** 정확히 입력 시 비밀번호 재설정 가능
<img src="https://github.com/user-attachments/assets/f64dadcf-7479-4723-8cfa-17281982cddb" width="800px"></br>

### ✔OAuth2 소셜로그인 (Google/Kakao/Naver)
<img src="https://github.com/user-attachments/assets/0a921760-f2ac-45e6-b27c-0867b5f9653b" width="265px">
<img src="https://github.com/user-attachments/assets/9c57ff50-f117-4a00-a552-8ba0039dd422" width="265px">
<img src="https://github.com/user-attachments/assets/4e1854c9-60f6-4c02-b939-4e4803beca08" width="265px">

## 📷화면구현
<details><summary>화면캡쳐 보기</summary>

### (사용자) 메인 페이지
![image](https://github.com/user-attachments/assets/6e2d2990-bc1a-409a-bea1-26de17a20a63)
### (사용자) 강의 리스트
![강의 리스트](https://github.com/user-attachments/assets/ade63de0-b051-4b89-a5e2-27cd667d49f7)
### (사용자) 강의 상세페이지
![강의 상세페이지](https://github.com/user-attachments/assets/07139eff-b4b2-4894-a7b6-cc3ce1ef1737)
### (사용자) 수강신청 완료 페이지
![강의 신청완료화면](https://github.com/user-attachments/assets/8f605a16-b767-43b6-a6cb-783a928665f9)
### (사용자) 교육 대시보드
![대시보드](https://github.com/user-attachments/assets/cbd016ff-268b-48e5-9153-92ac1dbeaaea)
### (사용자) 학습하기 페이지
![학습하기](https://github.com/user-attachments/assets/3b5a8376-8753-4b73-8c63-85661e318efb)
### (사용자) 시험보기 팝업
![시험보기 팝업](https://github.com/user-attachments/assets/428ef033-1ad9-4165-8163-8abe8cb8baa4)
### (사용자) 시험보기 페이지
![시험보기 페이지](https://github.com/user-attachments/assets/a45b535e-6e0f-4bd1-bcfb-9b18c248cf18)
### (사용자) 시험 결과화면
- 합격 결과화면
![시험 합격 화면](https://github.com/user-attachments/assets/4403193c-0822-45a4-8327-57ae9246e829)
- 불합격 결과화면
- ![시험 불합격 화면](https://github.com/user-attachments/assets/9eeafff9-7ffd-453d-8ed7-65d3e3be1b42)
- 3회 불합격 결과화면
![시험 3회차 불합격 화면](https://github.com/user-attachments/assets/2e5ae5f0-335d-42eb-b8b5-1af9fd213dc2)
### (사용자) 수료증 인쇄화면
![수료증 인쇄화면](https://github.com/user-attachments/assets/aed3cd9d-5a6a-4ea3-b3ab-eaecebd09067)

### 회원가입
![회원가입 페이지](https://github.com/user-attachments/assets/93e3126d-bc10-4bbd-9625-a4622c0d9286)

### 로그인
![로그인](https://github.com/user-attachments/assets/9acceb51-5d3e-43f2-a7a8-b6c64eb50160)

### OAuth2 소셜로그인 (Google/Naver/Kakao)
<img src="https://github.com/user-attachments/assets/76f71055-0fc0-4d94-a9a7-f6b68b97dbef" width="500px"> <br />
<img src="https://github.com/user-attachments/assets/840fdb20-f432-4ecd-8eda-555e8bbb201f" width="500px"> <br />
<img src="https://github.com/user-attachments/assets/562223b3-c619-459b-bf2a-76163e649b4c" width="500px"> <br />

### 아이디/비밀번호 찾기

#### 아이디 찾기
![아이디찾기-1](https://github.com/user-attachments/assets/183a1d18-1878-4c07-86b4-204674ac58d0)
<div align="center">
   <img src="https://github.com/user-attachments/assets/f61dc165-afb4-427d-b082-b19164c8767b" width="790px"  align="center">
</div>

![아이디찾기 - 2](https://github.com/user-attachments/assets/58894654-2b0e-43f9-8cd1-fea1208c1f1f)
![아이디찾기-3](https://github.com/user-attachments/assets/d6c23e39-a410-4dfd-8d4d-b4e6b8485473)

#### 비밀번호 찾기
![비밀번호 찾기 -1](https://github.com/user-attachments/assets/94f32470-4c69-4357-b4e6-837503690f8a)
![비밀번호 찾기 -2](https://github.com/user-attachments/assets/1a63f50f-9c62-4995-8689-0b465d410583)
![비밀번호 찾기 -3](https://github.com/user-attachments/assets/c139d051-e293-4280-a038-6724297dde7e)
![비밀번호 찾기 -4](https://github.com/user-attachments/assets/9b212abc-88ed-4733-b1ac-3caa685be780)
</details>

## 💥TroubleShooting 
> 1차 카테고리, 2차 카테고리 테이블의 연관관계를 맵핑하면서 1차 카테고리에 해당하는 2차 카테고리를 한번에 조회하기 위해 아래와 같은 관계를 설정하였습니다.<br />
```
/* Category 엔티티 일부*/
@OneToMany(mappedBy = "categories", cascade = CascadeType.ALL)
   private List<SubCategory> subCategories = new ArrayList<SubCategory>();
```
```
/* subCategory 엔티티 일부 */
@ManyToOne(fetch = FetchType.LAZY) 
@JoinColumn(name = "category_id")
@JsonIgnore //@JsonIgnore없을시 순환참조 문제발생
    private Category categories;
```
> 결과적으로, subCategory엔티티의 조인컬럼인 category_id를 통해 양방향 연관관계 매핑 시 순환참조(무한루프)하게되는 문제가 발생하였습니다.
> 구글링해본 결과 @JsonIgnore 애너테이션을 발견할 수 있었고, 해당 애너테이션을 필드나 메서드에 추가하면 직렬화 과정에서 제외할 수 있다는것을 알게되었습니다.
>  SubCategory 엔티티의 Category 참조에 @JsonIgnore 애너테이션을 추가하여 SubCategory 엔티티를 직렬화할 때 Category가 참조에서 제외되어 순환참조를 방지할 수 있었습니다.

## 📝프로젝트 소감
> 이번 프로젝트를 진행하면서 혼자 개발하는 과정에서 부족한 점도 많았고, 많은 것을 배울 수 있었습니다. <br />

> 특히 기간이 부족하여 충분한 예외 처리를 하지 못한 점이 아쉬움으로 남습니다. 이 부분은 추후 더 보완할 생각이며, <br /> 팀원과의 협업을 통해 해결할 수 있는 문제들이 많다는 것도 실감했습니다. <br /><br />

> 카테고리 선택과 실시간 진도율 저장을 구현하기 위해 Ajax 비동기 처리 방식을 사용했는데, 이 과정에서 Fetch API에 대해 알게 되었습니다. Fetch 방식은 스트림을 사용하여 응답 본문을 처리할 수 있어 AJAX방식보다 편리하게 사용할 수 있었지만, 구형 브라우저에서 지원이 되지 않는다는 단점을 파악하였습니다.<br />
이를 통해 비동기 통신 방식에 대해 더 깊이 이해할 수 있었습니다.<br /><br />

> 백엔드 로직을 개발하는 과정에서 큰 재미를 느꼈습니다. 그러나 컨트롤러에서 로직을 지나치게 길게 작성하거나 중복된 코드를 반복하게 되는 순간들이 있었습니다. <br />
다행히도 인텔리제이에서 중복된 코드를 메서드로 분리하거나, 서비스에서 처리하라는 알림을 띄워주어 불필요한 코드작성을 피할 수 있게 되었습니다.<br /><br />

> 이번 프로젝트는 저에게 큰 경험이 되었으며, 앞으로도 더 많은 공부가 필요할것 같다고 느꼈습니다.  
