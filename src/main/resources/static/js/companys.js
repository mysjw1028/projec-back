



let companyNumberSameCheck = false;

$("#buttoncheckform-submit").click(() => {
	emailCheck();
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
			location.href = "/main";
		} else { // 실패
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
$("#btncompanyNumberSameCheck").click(() => {
	$.ajax("/companys/companyNumberSameCheck?companyNumber=" + $(" #companyNumber").val(), {
		type: "GET",
		dataType: "json",
		async: true
	}).done((res) => {
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


//체크박스 여부
function ckCheck(num) {
	if ($("input:checkbox[name=item_name" + num + "]").is(":checked")) {
		alert("동의하셨습니다");
	} else {
		alert("동의해주세요");
	}
}
/****************유효성 검사*******************/
function emailCheck() {
	let email = $("#email").val();
	let emailRule = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if (emailRule.test(email)) {
		return true;
	} else {
		alert("이메일 적어주세요");
		return;
	}
}

function companyNameCheck() {
	let companyName = $("#companyName").val();
	let companyNameRule = /[\s]/;
	if (companyNameRule.test(companyName)) {
		return true;
	} else {
		alert("회사이름을 적어주세요");
		return;
	}
}








