<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필</title>
</head>
<body>
	<header id="header" class="header fixed-top d-flex align-items-center">
		<jsp:include page="common/header.jsp" />
	</header>
	<aside id="sidebar" class="sidebar">
		<jsp:include page="common/sidebar.jsp" />
	</aside>
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>프로필</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admin.ad">Home</a></li>
          <li class="breadcrumb-item">회원</li>
          <li class="breadcrumb-item active">프로필</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center" style="margin: 150px;">

              <img src="resources/assets/img/slide2.png" alt="Profile" class="rounded-circle">
              <h2>${ m.userName }</h2>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-edit">회원정보변경</button>
                </li>
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">비밀번호변경</button>
                </li>
              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-edit pt-3" id="profile-edit">
                  <!-- Profile Edit Form -->
                  <form action="update.ad" method="post">
                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">아이디</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="userName" type="text" class="form-control" id="fullName" value="${ m.userId }" disabled>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="name" class="col-md-4 col-lg-3 col-form-label">이름</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="text" name="userName" class="form-control" value="${ m.userName }">
                        <input type="hidden" name="userNo" class="form-control" value="${ m.userNo }">                        
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="birthday" class="col-md-4 col-lg-3 col-form-label">생년월일</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="date" name="birthDay" class="form-control" placeholder="생년월일 8자리 [ex)230824]" value="${ m.birthDay }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="gender" class="col-md-4 col-lg-3 col-form-label">성별</label>
                      <div class="col-md-8 col-lg-9" id="gender">
		                   <input type="radio" name="gender" id="Male" value="M">
		                   <label for="Male">신랑</label> &nbsp;&nbsp;
		                   <input type="radio" name="gender" id="Female" value="F">
		                   <label for="Female">신부</label>
                      </div>
                    </div>

                  	<c:if test="${ not empty m.gender }">
                  		<script>
                  			$(function(){
                  				$("#gender input[value=${ m.gender }]").attr("checked", true);
                  			})
                  		</script>
                  	</c:if>

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">전화번호</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="phone" type="text" class="form-control" id="Phone" placeholder="휴대폰 번호 [010-1234-5678]" onKeyup = "addHypen(this);" value="${ m.phone }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="grade" class="col-md-4 col-lg-3 col-form-label">등급</label>
                      <div class="col-md-8 col-lg-9">
			               <select class="form-select" id="validationDefault04" name="gradeNo" required>
			                 <option selected value="1">회원</option>
			                 <option value="2">협력업체</option>
			                 <option value="3">관리자</option>
		               	</select>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">이메일</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" class="form-control" id="Email" value="${ m.email }">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">회원정보수정</button> &nbsp;
                      <!-- <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteForm">회원추방</button> -->
                    </div>
                  </form><!-- End Profile Edit Form -->
                  

                </div>

                <div class="tab-pane fade pt-3" id="profile-change-password">
                  <!-- 비밀번호변경 Form -->
                  <form action="change.pw" method="post">
					
                    <div class="row mb-3">
                    <input type = "hidden" value = "${m.userNo}" name = "userNo"/>
                      <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">새로운 비밀번호</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="newpassword" type="password" class="form-control" id="newPassword">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">비밀번호 확인</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                      <span id="pwNeq" style="color:red; opacity: 0;">비밀번호가 일치하지 않습니다.</span>
                      </div>
                    </div>
                    <script>
                    	$("#renewPassword").keyup(function(){
                    		$("#pwNeq").css("opacity",1);                    			
                    		let newPw = $("#newPassword").val();
                    		if(newPw == $(this).val()){
	                    		$("#pwNeq").css("opacity",0);
	                    		$("#chPWbtn").attr("disabled",false)
                    		}else{
	                    		$("#chPWbtn").attr("disabled","disabled")
                    		}
                    	})
                    
                    </script>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary" id="chPWbtn" disabled="disabled">비밀번호 변경</button>
                    </div>
                  </form><!-- End Change Password Form -->

                </div>

              </div>
              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
    </section>

  </main><!-- End #main -->
 
  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/admin.js"></script>
  
  <!-- 핸드폰번호 - 없이 -->
  <script>
       function addHypen(obj) {
          var number = obj.value.replace(/[^0-9]/g, "");
          var phone = "";
   
          if(number.length < 4) {
              return number;
          } else if(number.length < 7) {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3);
          } else if(number.length < 11) {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3, 3);
              phone += "-";
              phone += number.substr(6);
          } else {
              phone += number.substr(0, 3);
              phone += "-";
              phone += number.substr(3, 4);
              phone += "-";
              phone += number.substr(7);
          }
          obj.value = phone;
      }
    </script>
</body>
</html>