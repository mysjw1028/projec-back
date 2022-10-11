package site.metacoding.miniproject1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/")
	public String test() {
		return "all/company";
	}
	@GetMapping("/companyedit")
	public String test1() {
		return "all/companyedit";
	}
	@GetMapping("/like")
	public String test2() {
		return "all/like";
	}
	@GetMapping("/serviceout")
	public String test3() {
		return "all/serviceout";
	}
	
	@GetMapping("/subscribe")
	public String test4() {
		return "all/subscribe";
	}
}
