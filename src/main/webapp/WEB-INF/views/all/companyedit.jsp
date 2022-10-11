<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

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

		<div class="basic_information_text_box">
			<div class="basic_information_box_title">기업정보 수정</div>
			<div class="application_information">지원 결과 또는 추천 포지션 정보를 전달할 이메일/연락처 정보 입력해주세요.</div>

			<div class="company_name_box">
				<div class="company_name_tag">회사명</div>
				<input class="company_name_form" type="text" name="test" placeholder="회사명"></input>
			</div>

			<div class="company_name_box">
				<div class="company_name_tag">대표지 주소</div>
				<input class="company_name_form" type="text" name="test" placeholder="대표지 주소"></input>
			</div>

			<div class="company_name_box">
				<div class="company_name_tag">대표 메일</div>
				<input class="company_name_form" type="text" name="test" color="#191819" placeholder="대표 메일"></input>
			</div>


			<div class="input__box">
				<div class="company_name_box">
					<div class="company_name_tag">지역</div>
					<div class="inputbox">
						<select class="form-select1">
							<option>지역 입력해주세요</option>
							<option>test1</option>
							<option>test2</option>
							<option>test3</option>
						</select>
					</div>
				</div>

				<div class="company_name_box">
					<div class="company_name_tag">직원 수</div>
					<div class="inputbox">
						<select class="form-select2">
							<option>직원 수 입력해주세요</option>
							<option>test1</option>
							<option>test2</option>
							<option>test3</option>
						</select>
					</div>
				</div>
			</div>

			<div class="completion" onclick="location.href='/'" style="cursor: pointer">
				<a href="/like"> 완료 </a>
			</div>

			<!--basic_information_box-->
		</div>
	</div>
</body>

</html>

<%@ include file="../layout/footer.jsp"%>