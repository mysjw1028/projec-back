package site.metacoding.miniproject1.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LikeController {
	@GetMapping("/like")
	public String main() {
		System.out.println("좋아요페이지 돌아감!!!");
		return "all/like";
	}
	
	
	
}
