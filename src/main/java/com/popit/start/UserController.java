package com.popit.start;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.popit.domain.UserVO;
import com.popit.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Inject
	private UserService service;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void RegisterGET(UserVO user, Model model) throws Exception {
		
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String RegisterPost(UserVO user, RedirectAttributes rttr) throws Exception{
		
		String hashedPw = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashedPw);
		service.insertUser(user);
		rttr.addFlashAttribute("msg", "Registered");
	
		return "redirect:/user/login";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public void ProfileGET() throws Exception {
		
	}
	
	
	
}
