package site.metacoding.miniproject1.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject1.service.CompanysService;
import site.metacoding.miniproject1.service.SubsribesService;
import site.metacoding.miniproject1.web.dto.CMRespDto;
import site.metacoding.miniproject1.web.dto.Companys.CompanysInsertReqDto;
import site.metacoding.miniproject1.web.dto.subcribes.SubscribesRespListDto;

@RequiredArgsConstructor
@Controller
public class SubscribesController {
	private final SubsribesService subsribesService;

	@GetMapping("/subscribes/{id}")
	public String subscribesform(@PathVariable Integer id, Model model) {
		System.out.println("돌아감!!!!!!!!!!!!!!!!");
		List<SubscribesRespListDto> subcribesList = subsribesService.구독목록(id);
		model.addAttribute("subcribesList", subcribesList);
		System.out.println(subcribesList);
		return "subscribes/subscribes";
	}

}
