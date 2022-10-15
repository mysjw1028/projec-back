<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!-- <a class="dropdown_item" >내 프로필</a>
    <a class="dropdown_item" >로그아웃</a> -->

<body>
	<div class="container">

		<div class="companyedit_title">기업정보 설정</div>
		<!--companyedit_title-->

		<div class="basic_information_option ">
			<div class="basic_information">
				<a href="/">기본정보 수정</a>
			</div>
			<div class="service_release">
				<a href="/">기업 서비스 해제</a>
			</div>
		</div>
		<!--basic_information_option-->

		<div class="service_cancellation_text_box">

			<div clas="all_text_box">
				<div class="service_cancellation">기업 서비스 해제 시 주의사항</div>

				<div class="service_cancellation_box_text">

					<div class="service_cancellation_information_cotent'">
						<div class="service_cancellation_information">
							탈퇴 시 회원님의 이력서를 포함하여 회원님의 계정에 저장된 모든 정보가 영구적으로 삭제되며, <br />다시는 복구할 수 없습니다.
						</div>
						<div class="service_cancellation_information">
							제출된 추천서의 수정이나 삭제를 원하실 경우, 탈퇴 이전에 추천 페이지에서 추천서를 수정,<br /> 또는 삭제 해주세요
						</div>
						<div class="service_cancellation_information">
							기업에 대한 채용 수수료 정산과 부정이용 방지를 위해, 기업에 대한 지원 내역은 관련 법령에,<br /> 의거하여 탈퇴 후 최장 5년간 저장됩니다.
						</div>
						<div class="service_cancellation_information">
							구해줘용 회원에서 탈퇴하실 경우, 추천 및 채용 보상금을 받으실 수 없습니다. <br />받으실 보상금이 있으시다면 탈퇴 이전에 모든 수속을 마쳐주세요.
						</div>
					</div>

					<div class="service_cancellation_information">기업 서비스에 등록되어 있는 계정일 경우, 기업 서비스 접속권한도 동시에 삭제됩니다.</div>
					<div class="service_cancellation_information">이상의 내용에 동의하여 탈퇴를 원하실 경우, 아래의 “동의하기” 버튼을 클릭 부탁드립니다.</div>

				</div>

			</div>

			<div class="completion_1" onclick="location.href='/'" style="cursor: pointer">
				<a href="/like"> 동의하기 </a>
			</div>
		</div>
	</div>


	<!--basic_information_box-->



</body>

</html>

<%@ include file="../layout/footer.jsp"%>