package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	@RequestMapping("/bookInfo")
	public String BookInfo(Model model) {
		model.addAttribute("title", "스프링 프레임워크");
		model.addAttribute("author", "홍길동");
		model.addAttribute("price", 20000);

		//return "/book/bookInfoView"; // '/' 부터 시작해도 되고
		return "book/bookInfoView"; // 폴더명부터 시작해도 됨
	}
	
	//ModelAndView 사용
	@RequestMapping("/bookInfo2")
	public ModelAndView BookInfo2(ModelAndView mv) {
		// 데이더 설정
		mv.addObject("title", "자바");
		mv.addObject("author", "강길동");
		mv.addObject("price", 30000);
		mv.addObject("date", "2022-11-11");
		
		// 뷰 페이지 설정
		mv.setViewName("book/bookInfoMVView");
		return mv;
	}
	// 다중 매핑
	@RequestMapping(value= {"/book/bookInfo3","/book/bookInfo4"})
	public String bookInfo34(HttpServletRequest request, Model model) {
		if(request.getServletPath().equals("/book/bookInfo3")){
			model.addAttribute("title", "홍길동전");
			model.addAttribute("price", "20000");
		}else if(request.getServletPath().equals("/book/bookInfo4")){
			model.addAttribute("title", "이몽룡전");
			model.addAttribute("price", "10000");
		}
		
		return "/book/bookInfoView2";
	}
}
