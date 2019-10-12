package com.popit.start;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.popit.service.BoardService;

@Controller
public class HomeController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, RedirectAttributes rttr) throws Exception {

		model.addAttribute("mainList", service.mainList());
		return "home";
	}
	
}
