package site.metacoding.miniproject1.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject1.domain.companys.Companys;
import site.metacoding.miniproject1.domain.companys.CompanysDao;
import site.metacoding.miniproject1.domain.subcribes.SubcribesDao;
import site.metacoding.miniproject1.web.dto.Companys.CompanysInsertReqDto;
import site.metacoding.miniproject1.web.dto.subcribes.SubscribesRespListDto;

@RequiredArgsConstructor
@Service
public class SubsribesService {
	
	private final SubcribesDao subcribesDao;
	

	public List<SubscribesRespListDto>  구독목록(Integer id) {
		List<SubscribesRespListDto>subcribesList  = subcribesDao.subcribesListPage(id);
		return subcribesList;
	}


}