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
 - 상품 상세페이지
 - 마이페이지
 - 상품 결제 및 취소
 - 장바구니 / 예약
 - 회원가입 및 로그인
 
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
![아이디찾기 및 비밀번호 재설정](https://github.com/whereding/Whereding/blob/main/모달.gif?raw=true)

<br><br>
#### 😊 상담예약 & 구매내역 😊
&nbsp;&nbsp;&nbsp; - 유저가 예약&구매한 내역, API를 통한 배송조회,지도 기능
![아이디찾기 및 비밀번호 재설정](https://github.com/whereding/Whereding/assets/134485601/51ddb038-f120-4bca-8f6d-70d236519317)


<br><br>
### 🐹류지완

#### 😊 메인페이지 😊 

![메인페이지](https://github.com/inumsiki/ticketDdakdae/assets/134485808/2e83cb2d-6f2a-4f20-b888-06751819b575)

<br><br>
### 😊 상품검색 😊
&nbsp;&nbsp;&nbsp; - 키워드에 해당하는 검색내용 조회

![상품검색](https://github.com/inumsiki/ticketDdakdae/assets/134485808/aa306ad8-a55a-40fb-9b1f-9e4691ca25fb)


<br><br>
#### 😊 카테고리 😊

&nbsp;&nbsp;&nbsp; - 카테고리별 페이지

![카테고리](https://github.com/inumsiki/ticketDdakdae/assets/134485808/8a4ead5a-5b07-4a67-a68f-a77aea8a2df8)
<br><br>

<br><br>
#### 😊 추천상품조회 😊
&nbsp;&nbsp;&nbsp; - 이용자 관심태그별 인기상품을 동적으로 조회해 추천

 - 로그인 전 페이지
![로그인 전 메인](https://github.com/inumsiki/ticketDdakdae/assets/134485808/201dd60a-19be-4be3-bc17-a3d831bc7f54)
<br><br>
 - 로그인 후 페이지
![로그인 후 메인](https://github.com/inumsiki/ticketDdakdae/assets/134485808/ce94f83d-7730-4226-b385-76ca134f6ee8)

<br><br>
### 🐷윤관현

#### 😊 마이페이지 😊
&nbsp;&nbsp;&nbsp; - 회원 정보 조회 및 변경, 탈퇴 기능

![마이페이지](https://github.com/inumsiki/ticketDdakdae/assets/134485808/061f062b-4bc1-4bad-9515-1b942f583a15)


<br><br>
#### 😊 티켓예매 😊

&nbsp;&nbsp;&nbsp; - 상품의 정보와 금액을 산정해 티켓 구매 및 예매 내역 조회

![티켓예매](https://github.com/inumsiki/ticketDdakdae/assets/134485808/17fac826-d328-4969-a3f6-76a3436f96a0)


<br><br>
#### 😊 한줄평 😊

&nbsp;&nbsp;&nbsp; - 상영날짜가 지난 예매내역의 한줄평 작성 및 수정 기능

![한줄평](https://github.com/inumsiki/ticketDdakdae/assets/134485808/f7c8fd38-3b32-49cb-a743-e4bfc6a00ca4)

<br><br>
#### 😊 좋아요 😊
&nbsp;&nbsp;&nbsp; - ajax를 이용한 좋아요 조회 및 관리 기능

![좋아요](https://github.com/inumsiki/ticketDdakdae/assets/134485808/ba6502d0-19a1-4cd5-af45-2ecc9af28803)






