<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>

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

	<div class=" container">

		<div class="center_header">
			<div class="company_info">회사 정보를 등록해주세요</div>
			<div class="mine_title">(이름)는 추천인/후보자들에게 좋은 일자리를 제공하기 위해, 다음정보를 리뷰하여 회사등록을 승인하고 있습니다.</div>
		</div>
		<!-- 회사정보이름 -->
		<div class="companyname_title">
			<div class="companyname">
				<div class="company_namebox">회사이름</div>
				<div class="companynameform">
					<input id="companyName" type="text" name="test" placeholder=" 회사명을 입력해주세요">
				</div>
			</div>
		</div>

		<!-- 대표지/대표메일구간 -->
		<div class="boss_set">
			<div class="Representativeaddressform">
				<p class="Representativeaddresstext">대표자주소</p>
				<div class="center">
					<input id="address" type="text" name="test" onClick="goPopup();" placeholder="사업자주소 입력해주세요">
				</div>
			</div>

			<div class="representativemailform">
				<p class="representativemailformtext">대표메일</p>
				<div class="center">
					<input id="email" type="text" name="test" placeholder="대표메일을 입력해주세요">
				</div>
			</div>
		</div>


		<!-- 대표지/대표메일구간 끝-->

		<!-- 사업자번호/지역-->

		<div class="buisnessman">
			<div class="textboxtitleform">
				<div class="businessnumberform">
					사업자번호
					<button id="btncompanyNumberSameCheck" type="button">
						<a href="javascript:void(0);">사업자번호 중복 체크</a>
					</button>
				</div>
				<div class="centerbusiness">
					<input id="companyNumber" type="text" name="test" placeholder="사업자번호 입력해주세요">
				</div>
			</div>

			<div class="regionform">
				<div id="region">지역</div>
				<div class="inputbox">
					<select id="regionCodeName">
						<option>지역 입력해주세요</option>
						<option>서울</option>
						<option>부산</option>
						<option>인천</option>
						<option>광주</option>
						<option>대전</option>
						<option>울산</option>
						<option>세종</option>
						<option>경기</option>
						<option>강원</option>
						<option>충북</option>
						<option>충남</option>
						<option>전북</option>
						<option>전남</option>
						<option>경남</option>
						<option>제주</option>
					</select>
				</div>
			</div>
		</div>

		<!-- 사업자번호/지역 끝-->
		<!-- 회사소개 -->
		<div class="companyabouttusset">
			<div class="companyabouttus">
				<div class="companyabouttusform">회사소개</div>
				<textarea id="intro" type="text" name="test"></textarea>
			</div>
		</div>


		<div class="companybirth">
			<div class="establishform">
				<div class="establishyear">설립연도</div>
				<div class="establish">
					<input id="years" type="text" name="test" placeholder="ex) 2020년도 ">
				</div>
			</div>

			<div class="establishnumber">
				<div class="femployeeorm">직원 수</div>
				<div class="employeebox">
					<input id="memberCount" type="text" name="test" placeholder="ex)직원수를 입력해주세요 ">
				</div>
			</div>
		</div>

		<div class="Terms_of_service">
			<div class="sel2">이용약관</div>
			<select multiple id="form-label" name="sellist2">
				<option>제 9 조 (개인회원 정보, 이력서 노출)</option>
				<option>① “개인회원”의 이력서는 개인이 회원가입 또는 이력서 작성 및 수정시 희망한 형태로 이력서를 노출한다.</option>
				<option>② "회사"는 개인회원이 회원정보, 이력서의 공개/비공개 지정, 이력서상의 연락처 공개/비공개를 자유롭게 선택할 수 있도록 하여야 한다.</option>
				<option>③ "회사"는 개인회원이 이력서 공개를 희망했을 경우,</option>
				<option>>기업회원, 서치펌회원 및 파견대행회원의 이력서 열람에 동의한것으로 간주하며 "회사"는 이들</option> 회원에게 무료/유료로 이력서 열람 서비스를 제공할
				수 있다. 다만, 연락처 각 항목이 비공개로 지정된 경우 해당 항목별 연락처를 노출할 수 없다.
				</option>
				<option>④ "회사"는 개인회원이 교육에 대한 상담을 원할 경우</option>
				<option>"회사"의 교육기관회원에게 개인회원의 전자우편 주소를 노출할 수 있으며</option>교육기관회원으로부터 정보의 수신을 원할 경우 교육기관회원에게 연락처를
				공개할 수 있다.
				</option>
				<option>⑤ "회사"는 안정적인 서비스를 제공하기 위해 테스트 및 모니터링 용도로 "사이트" 운영자가 이력서 정보를 열람하도록 할 수 있다.</option>
				<option>제 10 조 (제휴를 통한 서비스)</option>
				<option>① "회사"는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의</option>
				<option>오프라인 매체를 통해 사이트에 등록한 개인회원의 이력서 정보가 열람될 수 있도록 서비스를 제공할 수 있다.</option>
				<option>단, 개인회원의 경우 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 제9조의 각 항에 따른다.</option>
				<option>② "회사"는 제휴를 통해 타 사이트 및 매체에 등록될 수 있음을 고지해야 하며, 제휴 사이트 전체 목록을 사이트내에서 상시 열람할 수 있도록
					해야 한다.
				<option>③ "회사"는 다음 각 호의 사이트와 제휴를 통해 회원이 공개를 요청한 이력서에 한해 이력서 정보를 제공한다.</option>(
				<option>단, 본 약관 시행일 현재에는 제휴를 통한 타 사이트 및 매체는 없다.)</option>
				<option>④ "제 10조 ③호" 제휴를 통한 사이트의 변동사항 발생 시 공지사항을 통해 고지 후 진행 한다.</option>
			</select>
		</div>


		<div class="buttonform">
			<div class="form_check">

				<input type="checkbox" name="item_name1" value="y" onclick="ckCheck('1')"> 이용약관에 동의합니다 (필수)
			</div>

			<div class="buttoncheckform">
				<p class="buttoncheck2">
					<a id="buttoncheckform-submit" href="main">제출하기</a>
				</p>
				<!-- 링크이동 제출 후 어느 페이지로 이동 할건지
                -->
			</div>
		</div>

	</div>

	<script>
	 let companyNumberSameCheck = false;
	
	 $("#buttoncheckform-submit").click(()=>{
		insert();
	});

	function insert(){
		let data = {
				companyName: $("#companyName").val(),
				address: $("#address").val(),
				email: $("#email").val(),
				companyNumber:$("#companyNumber").val(),
				regionCodeName:$("#regionCodeName").val(),
				intro: $("#intro").val(),
				years: $("#years").val(),
				memberCount: $("#memberCount").val()
		}
		$.ajax("/companys",{
			type: "POST",
			dataType: "json",
			data: JSON.stringify(data), // http body에 들고갈 요청 데이터
			headers: { // http header에 들고갈 요청 데이터
				"Content-Type": "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){ // 성공
				location.href="/main";
			}else{ // 실패
				alert("회사서비스등록에 실패하였습니다.");
			}
		});
	}
	
	

	//주소입력창
	function goPopup() {
		var pop = window.open("/companys/jusoPopup", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}

	function jusoCallBack(roadFullAddr) {
		$('#address').val(roadFullAddr);
	}
	//사업자번호 중복체크
 $("#btncompanyNumberSameCheck").click(()=>{
		$.ajax("/companys/companyNumberSameCheck?companyNumber="+$(" #companyNumber").val(),{
			type:"GET",
			dataType: "json",
			async: true
		}).done((res)=>{
			if(res.code == 1){ // 통신 성공
				if(res.data == false){
					alert("사업자번호가 중복되지 않았습니다.");
					companyNumberSameCheck = true;
				}else{
					alert("사업자번호가 중복되었어요. 다른 아이디를 사용해주세요.");
					companyNumberSameCheck = false;		
					$("#companyNumber").val("");
				}
			}
		});
	});	  
	//체크박스 여부
 function ckCheck(num) {
		if ($("input:checkbox[name=item_name"+ num +"]").is(":checked")) {
	    	alert("동의하셨습니다");
	    } else {
	    	alert("동의해주세요");    
	    }
	}
	

</script>
</body>
</html>

<%@ include file="../layout/footer.jsp"%>