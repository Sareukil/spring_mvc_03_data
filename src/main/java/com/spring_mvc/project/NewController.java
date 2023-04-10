package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewController {
	@RequestMapping("/")
	public String index() {
		return "index"; // 뷰페이지 이름 반환 : index.jsp
	}
	
	// 뷰 페이지러 데이터 전달
	// '/showInfo' 요청이 들어오면 ('/showInfo' 요청 이름)
	// Model 객체를 이용해서 데이터 설정 : "이름", 값
	// showInfoView.jsp 뷰페이지로 Model 객체 전달
	@RequestMapping("/showInfo")
	public String showInfo(Model model) {
		model.addAttribute("name", "홍길동");
		model.addAttribute("age", 30); // 숫자인 경우 일반적으로 따옴표 안 붙임
		
		// 숫자에 따옴표 붙인 경우 확인 (더하기 연산 수행 결과 확인)
		model.addAttribute("x", "10");
		model.addAttribute("y", "20");
		// 숫자에 따옴표 안 붙인 경우 확인  (더하기 연산 수행 결과 확인)
		model.addAttribute("a", 10);
		model.addAttribute("b", 20);
		// 결론 : 숫자에 따옴표 붙이든 안 붙이든 더하기 연산 수행 (오류 없음)
		// 단, 문자열 연산은 오류 발생 ("aa") ,("bb")
		
		return "showInfoView"; // showInfoView.jsp 페이지 이름 반환
	}
	
	// ModelAndView 객체 사용
	// 데이터 설정 / 뷰 페이지 설정
	// ModelAndView 객체 반환
	@RequestMapping("/showInfo2")
	public ModelAndView showInfo2(ModelAndView mv) {
		// 데이터 설정
		mv.addObject("name", "이몽룡");
		mv.addObject("address", "서울");
		
		// 뷰 페이지 설정
		mv.setViewName("showInfoMVView"); // showInfoMVView.jsp
		
		return mv; // ModelAndView 객체 반환
	}
	
	//Model과 ModelAndView를 같이 사용
	@RequestMapping("/showInfo3")
	public ModelAndView showInfo3(Model model,
															 ModelAndView mv) {
		// 데이터 설정
		model.addAttribute("name", "성춘향");
		
		mv.addObject("name", "이몽룡"); // ModelAndView가 우선
		mv.addObject("address", "서울");
		
		// 뷰 페이지 설정
		mv.setViewName("showInfoMVView3"); // showInfoMVView.jsp
		
		model.addAttribute("age", 35);
		
		return mv; // ModelAndView 객체 반환
	}
	
	// 다중 매핑
	@RequestMapping(value= {"/mem/showInfo4", "/mem/showInfo5"})
	public String showInfo45(HttpServletRequest request,
												 Model model) {
		if(request.getServletPath().equals("/mem/showInfo4")) {
			model.addAttribute("name", "홍길동");
			model.addAttribute("year", 4);
		}else if(request.getServletPath().equals("/mem/showInfo5")) {
			model.addAttribute("name", "이몽룡");
			model.addAttribute("year", 5);
		}
		
		return "showInfoView2";
	}
	
}
























