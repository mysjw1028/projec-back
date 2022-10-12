$("#buttoncheckform-submit").click(() => {
	insert();
});

function insert() {
	let data = {
		companyName: $("#companyName").val(),
		address: $("#address").val(),
		email: $("#email").val(),
		companyNumber: $("#companyNumber").val(),
		regionCodeName: $("#regionCodeName").val(),
		intro: $("#intro").val(),
		years: $("#years").val(),
		memberCount: $("#memberCount").val()
	}
	$.ajax("/companys", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data), // http body에 들고갈 요청 데이터
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) { // 성공
			location.href = "/companys";
		} else { // 실패
			alert("회사서비스등록에 실패하였습니다.");
		}
	});
}

//사업자번호 중복체크
$("#btncompanyNumberSameCheck").click(() => {
	// 0. 통신 오브젝트 생성 (Get 요청은 body가 없다.)
	// 1. 사용자가 적은 username 값을 가져오기
	let companyNumber = $("#companyNumber").val();
	// 2. Ajax 통신
	$.ajax("/companys/companyNumberSameCheck?companyNumber=" + companyNumber, {
		type: "GET",
		dataType: "json",
		async: true
	}).done((res) => {
		console.log(res);
		if (res.code == 1) { // 통신 성공
			if (res.data == false) {
				alert("사업자번호가 중복되지 않았습니다.");
				companyNumberSameCheck = true;
			} else {
				alert("사업자번호가 중복되었어요. 다른 아이디를 사용해주세요.");
				companyNumberSameCheck = false;
				$("#companyNumber").val("");

			}
		}
	});
});


//주소입력창
function goPopup() {
	var pop = window.open("/companys/jusoPopup", "pop",
		"width=570,height=420, scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr) {
	$('#address').val(roadFullAddr);
}



