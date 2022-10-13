
let companyNumberSameCheck = false;

$("#buttoncheckform-submit").click(() => {
	emailCheck();
	insert();
});

$("#companyNameCheck").click(() => {
	companyNameCheck();
});

$("#btnLogin").click(() => {
	login();
});


$("#btnDelete").click(() => {
	resign();
});

$("#btnUpdate").click(() => {
	update();
});
/*--------------------------------------------------------------------*/
function join() {
	if (companyNameRule == false) {
		alert("유저네임 중복 체크를 진행해주세요");
		return;
	}
	
	//한글체크
	if (koreanCheck() == true){
		alert("유저네임에 한글이 있으면 안됩니다.");
		return;
	}
	
	if (koreanCheckPassword() == true){
		alert("비밀번호에 한글이 있으면 안됩니다.");
		return;
	}
	
	if (koreanCheckEmail() == true){
		alert("이메일에 한글이 있으면 안됩니다.");
		return;
	}
	
	if (checkCapital() == false) {
		alert("유저네임에는 대문자가 최소한 하나 필요합니다.");
		return;
	}
	
	if (passwordSameCheck() == false){
		alert("동일한 비밀번호가 아닙니다.");
		return;
	}
	
	if (checkEmail() == false){
		alert("올바른 이메일 형식이 아닙니다.");
		return;
	}
	
	//공백체크
	
	if (nullCheckUsername() == true){
		alert("유저네임에 공백이 포함되어 있습니다.")
		return;
	}
	
	if (nullCheckPassword() == true){
		alert("비밀번호에 공백이 포함되어 있습니다.")
		return;
	}
	
	if (nullCheckEmail() == true){
		alert("이메일에 공백이 포함되어 있습니다.")
		return;
	}
/*-----------------------------------------------------------------------------*/
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
/*------------------------------------------------------------------*/
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

function login() {
	let data = {
		username: $("#username").val(),
		password: $("#password").val(),
		remember: $("#remember").prop("checked")
	};

	$.ajax("/api/login", {
		type: "POST",
		dataType: "json", // 응답 데이터
		data: JSON.stringify(data), // http body에 들고갈 요청 데이터
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/";
		} else {
			alert("로그인 실패, 아이디 패스워드를 확인해주세요");
		}
	});
}

function resign() {
	let id = $("#id").val();

	$.ajax("/s/api/users/" + id, {
		type: "DELETE",
		dataType: "json" // 응답 데이터
	}).done((res) => {
		if (res.code == 1) {
			alert("회원탈퇴 완료");
			location.href = "/";
		} else {
			alert("회원탈퇴 실패");
		}
	});
}

function update() {
	let data = {
		password: $("#password").val(),
		email: $("#email").val()
	};

	let id = $("#id").val();

	$.ajax("/s/api/users/" + id, {
		type: "PUT",
		dataType: "json", // 응답 데이터
		data: JSON.stringify(data), // http body에 들고갈 요청 데이터
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("회원 수정 완료");
			location.reload(); // f5
		} else {
			alert("업데이트에 실패하였습니다");
		}
	});
}

//한글여부 체크
function koreanCheck(){
	let username = $("#username").val();
	let korRule = /^[가-힣]*$/;
    if(korRule.test(username)) {
        return true;
    } else {
        return false;
    }

    return false;
}

function koreanCheckPassword(){
	let username = $("#password").val();
	let korRule = /^[가-힣]*$/;
    if(korRule.test(username)) {
        return true;
    } else {
        return false;
    }

    return false;
}

function koreanCheckEmail(){
	let username = $("#email").val();
	let korRule = /^[가-힣]*$/;
    if(korRule.test(username)) {
        return true;
    } else {
        return false;
    }

    return false;
}

//대문자 체크
function checkCapital(){
	let username = $("#username").val();
	let capital = /[A-Z]/;
	if(capital.test(username)){
		return true;
	}else {
		return false;
	}
}

//비밀번호 동일 체크
function passwordSameCheck() {
	let password = $("#password").val();
	let passwordSame = $("#passwordSame").val();
	if (password == passwordSame) {
		return true;
	}else {
		return false;
	}
}

//이메일 형식 체크
function checkEmail (){
	let email = $("#email").val();
	let emailCheck = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	if(emailCheck.test(email)){
		return true;
	}else{
		return false;
	}
}

//공백체크
function nullCheckUsername (){
	let isNull = $("#username").val();
	let isNullUsername = /[\s]/;
	if (isNullUsername.test(isNull)){
		return true;
	}else {
		return false;
	}
}

function nullCheckPassword (){
	let isNull = $("#password").val();
	let isNullUsername = /[\s]/;
	if (isNullUsername.test(isNull)){
		return true;
	}else {
		return false;
	}
}

function nullCheckEmail (){
	let isNull = $("#email").val();
	let isNullUsername = /[\s]/;
	if (isNullUsername.search(isNull) == -1){
		return true;
	}else {
		return false;
	}