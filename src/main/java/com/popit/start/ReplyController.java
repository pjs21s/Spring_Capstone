package com.popit.start;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.popit.domain.ReplyVO;
import com.popit.service.ReplyService;

@Controller
@RequestMapping("/reply")
public class ReplyController {
	
	private final ReplyService replyservice;
	
	@Inject
	public ReplyController(ReplyService replyservice) {
		this.replyservice = replyservice;
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String replyPOST(ReplyVO replyvo, RedirectAttributes rttr) throws Exception {
		replyservice.create(replyvo);
		return "redirect:/list";
				
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String replyDelete(@RequestParam("replyNo") int replyNo, RedirectAttributes rttr) throws Exception{
		replyservice.delete(replyNo);
		return "redirect:/list";
	}
}
