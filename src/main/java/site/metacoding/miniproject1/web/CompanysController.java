package site.metacoding.miniproject1.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject1.service.CompanysService;
import site.metacoding.miniproject1.web.dto.CMRespDto;
import site.metacoding.miniproject1.web.dto.Companys.CompanysInsertReqDto;

@RequiredArgsConstructor
@Controller
public class CompanysController {
	private final CompanysService companysService;

	@GetMapping("/main")
	public String main() {
		System.out.println("메인페이지 돌아감!!!");
		return "all/main";
	}

	@GetMapping("/companys")
	public String companyform() {
		System.out.println("회사페이지 돌아감!!!!!");// ajax 사용
		return "all/companys";
	}

	// 사업자 번호 중복체크

	// http://localhost:8000/companys/companyNumberSameCheck?companyNumber=ssar
	@GetMapping("/companys/companyNumberSameCheck")
	public @ResponseBody CMRespDto<Boolean> companyNumberSameCheck(String companyNumber) {
		boolean isSame = companysService.사업자번호중복확인(companyNumber);
		return new CMRespDto<>(1, "성공", isSame);
	}
	
// 주소입력창
	@RequestMapping(value = "/companys/jusoPopup", method = RequestMethod.GET)
	public String test() {
		return "all/jusoPopup";
	}

	@RequestMapping(value = "/companys/jusoPopup", method = RequestMethod.POST)
	public String test2() {
		return "all/jusoPopup";
	}
//주소입력창 완료

	@PostMapping("/companys")
	public @ResponseBody CMRespDto<?> insert(@RequestBody CompanysInsertReqDto companysInsertReqDto) {
		System.out.println("회사정보 돌아감!!!!!");// ajax 사용
		companysService.회사정보등록(companysInsertReqDto);
		return new CMRespDto<>(1, "회사정보등록성공", null);
	}
}
