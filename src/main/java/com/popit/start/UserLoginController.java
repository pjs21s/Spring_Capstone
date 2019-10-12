package com.popit.start;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.popit.domain.LoginDTO;
import com.popit.domain.UserVO;
import com.popit.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserLoginController {
	
	private final UserService userService;
	
	@Inject
	public UserLoginController(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void LoginGET(LoginDTO loginDTO) {
	}
	
	@RequestMapping(value="/loginPost", method=RequestMethod.POST)
	public void loginPOST(LoginDTO loginDTO, HttpSession httpsession, Model model) throws Exception{
		UserVO uservo = userService.login(loginDTO);
		
		if(uservo == null || !BCrypt.checkpw(loginDTO.getPassword(), uservo.getPassword())) {
			return;
		}
		model.addAttribute("userVO", uservo);
	}
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession httpsession) throws Exception{
		Object object = httpsession.getAttribute("login");
		if(object != null) {
			httpsession.removeAttribute("login");
			httpsession.invalidate();
		}
		return "/user/logout";
	}
}
