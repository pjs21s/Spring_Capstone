package com.popit.start;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;
import com.popit.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Inject
	private UserService userservice;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void RegisterGET(@ModelAttribute UserVO uservo, Model model) throws Exception {
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String RegisterPost(@Valid UserVO uservo, BindingResult result, RedirectAttributes rttr) throws Exception{
		
		if(result.hasErrors()) {
			return "/user/register";
		}
		
		String hashedPw = BCrypt.hashpw(uservo.getPassword(), BCrypt.gensalt());
		uservo.setPassword(hashedPw);
		userservice.insertUser(uservo);
		rttr.addFlashAttribute("msg", "Registered");
	
		return "redirect:/user/login";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public void ProfileGET() throws Exception {
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void ModifyGET() throws Exception {
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String ModifyPOST(HttpSession httpsession, RedirectAttributes rttr, LoginDTO loginDTO) throws Exception {
		userservice.modify(loginDTO);
		httpsession.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/withdrawal", method = RequestMethod.GET)
	public void WithdrawalGET() throws Exception {
	}
	
	@RequestMapping(value = "/withdrawal", method = RequestMethod.POST)
	public String WithdrawalPOST(HttpSession httpsession, RedirectAttributes rttr, LoginDTO loginDTO) throws Exception {
		userservice.withdrawal(loginDTO);
		httpsession.invalidate();
		
		return "redirect:/";
	}
	
}
