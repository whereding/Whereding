<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">
<style>
	.menu {
  		list-style: none;
	}


	.sub-item {
	  margin-left:30px;
	  display:none;
	}
	.review-item:hover .sub-item{
		display:block;
		margin-bottom:25px;
	}
	.sub-item>li:hover{
		background:red;
	}
</style>
</head>
<body>
    <!-- ======= Sidebar ======= -->

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="admin.ad">
          <i class="bi bi-grid"></i>
          <span>메뉴</span>
        </a>
      </li><!-- End Dashboard Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" href="mList.ad">
          <i class="bi bi-layout-text-window-reverse"></i><span>회원정보 조회</span>
        </a>
        <!--  
        <i class="bi bi-chevron-down ms-auto"></i>
        <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
         
          <li>
            <a href="mList.ad">
              <i class="bi bi-circle"></i>
              <span>회원정보 조회</span>
            </a>
          </li>
        </ul>
        -->
       </li>
        <!-- 회원 -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="notice.ad">
          <i class="bi bi-question-circle"></i>
          <span>공지사항</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="qna.ad">
          <i class="bi bi-question-circle"></i>
          <span>Q.N.A</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="giftsale.ad">
          <i class="bi bi-envelope"></i>
          <span>답례품 목록</span>
        </a>
      </li><!-- End Contact Page Nav -->
        
        <li class="nav-item">
        <a class="nav-link collapsed" href="collabo.ad?cpage=">
          <i class="bi bi-envelope"></i>
          <span>협업업체 신청목록</span>
        </a>
      </li><!-- End Contact Page Nav -->
      
      <li class="nav-item review-item">
        <a class="nav-link collapsed" href="hallReview.ad">
          <i class="bi bi-envelope"></i>
          <span>리뷰 관리</span>
        </a>
      

    </ul><!-- End Sidebar-->
    

   <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="resources/assets/vendor/quill/quill.min.js"></script>
  <script src="resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File --> 
  <script src="resources/assets/js/admin.js"></script>
</body>
</html>