package site.metacoding.miniproject1.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject1.domain.companys.CompanysDao;
import site.metacoding.miniproject1.web.dto.Companys.CompanysInsertReqDto;

@RequiredArgsConstructor
@Service
public class CompanysService {

	private final CompanysDao companysDao;
	

	public void 회사정보등록(CompanysInsertReqDto companysInsertReqDto) {
		System.out.println("dddddddddddddddddddd");
		companysDao.insert(companysInsertReqDto.toEntity());
	}

}
