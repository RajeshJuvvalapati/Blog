package com.example.Blog.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String homePage(ModelMap model){
		//ModelAndView model = new ModelAndView("4.html");
		model.addAttribute("variableName", "someValue");
		
		return "4";
	}
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public int testPage(){
		//ModelAndView model = new ModelAndView("4.html");
		//model.addAttribute("variableName", "someValue");
		
		return 10;
	}
	
	
	
	

}
