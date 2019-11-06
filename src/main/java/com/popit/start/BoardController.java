package com.popit.start;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.popit.domain.BoardVO;
import com.popit.domain.CategoryVO;
import com.popit.domain.LoginDTO;
import com.popit.domain.PageMaker;
import com.popit.domain.ReplyVO;
import com.popit.domain.SearchCriteria;
import com.popit.domain.UserVO;
import com.popit.service.BoardService;
import com.popit.service.CategoryService;
import com.popit.service.ReplyService;
import com.popit.service.UserService;


@Controller
@RequestMapping(value = "/")
public class BoardController {	

	@Inject
	private BoardService service;
	
	@Inject
	private ReplyService repservice;
	
	@Inject
	private CategoryService categoryservice;


	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	  public void registerGET(BoardVO boardvo, Model model) throws Exception {
		List<CategoryVO> categorylist = categoryservice.categorylist();
		model.addAttribute("categorylist", categorylist);
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	  public String registPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception {

		service.regist(boardvo);
	    return "redirect:/list"; 
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	  public void read(@RequestParam("bno") int bno, Model model) throws Exception{
		  
		model.addAttribute(service.read(bno));
		
		List<ReplyVO> repList = repservice.list(bno);
		model.addAttribute("repList", repList);
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.GET)
	  public void modifyGET(int bno, Model model) throws Exception {
	    model.addAttribute(service.read(bno)); 
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.POST)
	  public String modifyPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception {
	    service.modify(boardvo); 
	    return "redirect:/list";
	  }

	  @RequestMapping(value = "/remove", method = RequestMethod.POST)
	  public String removePOST(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{
		  service.remove(bno); 
		  return "redirect:/list";
	  }

	  @RequestMapping(value = "/list", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	    model.addAttribute("list", service.listSearchCriteria(cri)); 
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(service.listSearchCount(cri));
	    model.addAttribute("pageMaker", pageMaker);
	  }
	  
	  @RequestMapping(value = "/map", method = RequestMethod.GET)
	  public void mapGET() throws Exception {
		  
	  }
}
