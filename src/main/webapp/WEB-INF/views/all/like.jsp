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

		<!-- 공고진행중 -->
		<div class="photosetting">
			<div class="liketitle">좋아요</div>
			<!-- foreach 문 돌리는 페이지 -->

			<div class="full_setting">
				<c:forEach var="like" items="${likeList}">
					<div class="photocompany">
						<a href="/"><img class="companyphoto" src="./asset/companyphoto.jpg" alt="회사이미지"
							width="230" height="175"></a>
					</div>
					<!--기업사진-->
					<div class="company_story">
						<!-- 	<tr>
						<td>${like.no}</td>
						<td>${like.name}</td>
						<td>${like.createdAt}</td>
					</tr>

					 -->

						<div class="contect_title">채용공고 타이틀</div>

						<div class="explanation">
							<div class="explanation_text">설명글입니다</div>
							<div class="explanation_text">설명글입니다</div>
						</div>

						<div class="company_image">
							<a href="/"><img class="conpany_min_iphoto" src="./asset/companyphoto.jpg" alt="회사이미지"
								width="25" height="25"></a>
							<div class="companys_mininame">
								<a class="companys_mininame" href="/">회사이름</a>
							</div>
						</div>

						<div class="like_proceeding">진행중</div>
					</div>
			</div>
			</c:forEach>

		</div>

	</div>

</body>

</html>
<%@ include file="../layout/footer.jsp"%>