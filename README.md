![header](https://github.com/inumsiki/ticketDdakdae/assets/134485601/96bca40c-5305-425b-9a23-0ed02fc32c17)
# Whereding

<br><br>
## 📢프로젝트 설명

**Whereding -  결혼에 필요한 여러 업체를 한곳에서 비교하고 예약할 수 있는 종합 결혼업체 예약 플렛폼**

Whereding은 결혼을 준비하는 부부들을 위한 편리하고 효율적인 결혼업체 비교 플렛폼입니다.
<br>
원하는 조건에 맞게 업체를 검색하여 비교할 수 있어 결혼준비에 소요되는 시간을 최소화 할 수 있습니다.


<br><br>
## 📆 개발 기간 
2023.09.19 ~ 2023.11.07


<br><br>
## 👨‍👩‍👧‍👦 멤버 구성 
- 윤재성 (https://github.com/jeasung90)
  
   &nbsp;&nbsp;&nbsp; -  카드결제 및 취소
  
   &nbsp;&nbsp;&nbsp; -  메인페이지 모달
  
   &nbsp;&nbsp;&nbsp; -  상담예약 & 답례품구매 내역

   &nbsp;&nbsp;&nbsp; -  고객센터(공지사항,Q&A,협력업체신청)
  
- 이원종 (https://github.com/lwjong0210)
  
    &nbsp;&nbsp;&nbsp; - 메인 검색바

    &nbsp;&nbsp;&nbsp; - 사이드바(답례품 장바구니,예약 장바구니)

    &nbsp;&nbsp;&nbsp; - 답례품 장바구니, 예약 장바구니

    &nbsp;&nbsp;&nbsp; - 메인페이지(헤더,푸터)

    &nbsp;&nbsp;&nbsp; - 웨딩업체 목록 및 상세페이지

    &nbsp;&nbsp;&nbsp; - 관리자페이지 일부(회원정보 CRUD)
  
- 양관우 (https://github.com/yangkwannwoo1)

    &nbsp;&nbsp;&nbsp; - 회원기능(로그인, 회원가입, 아이디&비밀번호 찾기)
  
    &nbsp;&nbsp;&nbsp; - 답례품(목록페이지, 상세페이지)

    &nbsp;&nbsp;&nbsp; - 관리자페이지 일부(협력업체신청,리뷰관리)

<br><br><br>
## ⚙️개발 환경 

- 개발 툴 : sts , VScode , Oracle Sql Developer
- Server : Apach Tomcat 9.0
- FrameWork/ Library : Spring, Mybatis, jQuery, Maven
- DB : Oracle DB
- 형상 관리 : GIt, GitHub, SourceTree

<br><br>

## 🌈 기술 스택 
- FrontEnd : HTML5, JavaScript, JQuery, CSS3, Bootstrap
- BackEnd : Java 11, JSP & Servlet , REST API , AJax 
  

<br><br>

 
 ## 🔧주요기능
<div style="display:flex; flex-direction:row;">

 - 메인화면 (검색기능)
 - 상품 목록 & 상세 페이지
 - 마이페이지(구매내역,상담내역)
 - 상품 결제 및 취소
 - 장바구니 / 예약
 - 회원가입 및 로그인
 - 관리자 페이지
 
</div>
 
<br><br>
## 🎬프로젝트 구현

### 🦄윤재성
카드결제 및 취소
메인페이지 모달
상담예약 & 답례품구매 내역
고객센터(공지사항,Q&A,협력업체신청)
#### 😊 카드결제 및 취소 😊
&nbsp;&nbsp;&nbsp; - KG이니시스 API를 통한 결제, REST API를 통한 결제 취소
![카드결제 및 취소](https://github.com/inumsiki/ticketDdakdae/assets/134485601/eca8b346-91ed-4ba8-873d-f897330d4b50)

<br><br>
#### 😊 메인페이지 모달 😊 
&nbsp;&nbsp;&nbsp; - 접속시 모달 팝업 및 쿠키를 이용한 1주일 안보기 기능
![메인페이지 모달](https://github.com/whereding/Whereding/blob/main/모달.gif?raw=true)

<br><br>
#### 😊 상담예약 & 구매내역 😊
&nbsp;&nbsp;&nbsp; - 유저가 예약&구매한 내역, API를 통한 배송조회,지도 기능
![상담내역 및 구매내역](https://github.com/whereding/Whereding/assets/134485601/51ddb038-f120-4bca-8f6d-70d236519317)


<br><br>
### 🐹이원종

#### 😊 메인페이지 검색 😊 
&nbsp;&nbsp;&nbsp; - 원하는 조건을 선택하여 해당 조건에 일치하는 업체 조회

![메인페이지](https://github.com/whereding/Whereding/blob/main/메인검색.gif?raw=true)

<br><br>
### 😊 사이드바 😊
&nbsp;&nbsp;&nbsp; - 사이드바 모달로 장바구니,카카오톡 상담기능 연동

![사이드바](https://github.com/whereding/Whereding/assets/134485601/56ef679e-05ef-4243-ba8b-62e5d3b31c95)


<br><br>
#### 😊 목록 및 상세 페이지 😊

&nbsp;&nbsp;&nbsp; - 제품 카테고리별 목록 및 상세페이지

![목록 및 상세](https://github.com/whereding/Whereding/blob/main/목록%20및%20상세페이지.gif?raw=true)

<br><br>
#### 😊 답례품 장바구니 😊

&nbsp;&nbsp;&nbsp; - 장바구니 기능

![답례품 장바구니](https://github.com/whereding/Whereding/blob/main/답례품%20장바구니.gif?raw=true)

<br><br>
#### 😊 예약 장바구니 및 예약 😊

&nbsp;&nbsp;&nbsp; - 업체 상담예약 장바구니 및 상담 예약

![예약 장바구니](https://github.com/whereding/Whereding/blob/main/예약장바구니.gif?raw=true)

<br><br>
#### 😊 관리자페이지 - 회원정보 조회 및 수정 😊

&nbsp;&nbsp;&nbsp; - 관리자 기능으로 가입된 회원의 정보 조회 및 수정

![예약 장바구니]()



<br><br>
### 🐵양관우

#### 😊 로그인 및 회원가입 😊 
&nbsp;&nbsp;&nbsp; - 로그인 및 회원가입 ( 소셜로그인 )

![메인페이지](https://github.com/whereding/Whereding/blob/main/메인검색.gif?raw=true)

<br><br>
### 😊 아이디 & 비밀번호 찾기 😊
&nbsp;&nbsp;&nbsp; - 이메일 확인을 통한 비밀번호 찾기

![사이드바](https://github.com/whereding/Whereding/assets/134485601/56ef679e-05ef-4243-ba8b-62e5d3b31c95)

<br><br>
### 😊 답례품 목록 및 상세페이지 😊
&nbsp;&nbsp;&nbsp; - 답례품 제품 목록 및 상세페이지

![사이드바](https://github.com/whereding/Whereding/assets/134485601/56ef679e-05ef-4243-ba8b-62e5d3b31c95)


<br><br>
### 😊 관리자페이지 - 협력업체 승인 및 거절 😊
&nbsp;&nbsp;&nbsp; - 관리자페이지에서 협력업체 신청 승인 및 거절

![사이드바](https://github.com/whereding/Whereding/assets/134485601/56ef679e-05ef-4243-ba8b-62e5d3b31c95)




