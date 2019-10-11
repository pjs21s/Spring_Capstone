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
import com.popit.domain.PageMaker;
import com.popit.domain.ReplyVO;
import com.popit.domain.SearchCriteria;
import com.popit.service.BoardService;
import com.popit.service.ReplyService;

@Controller
@RequestMapping(value = "/")
public class BoardController {	

	@Inject
	private BoardService service;
	
	@Inject
	private ReplyService repservice;


	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	  public void registerGET(BoardVO boardvo, Model model) throws Exception {
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	  public String registPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception { // 인자값으로 REDIRECT 사용 
		service.regist(boardvo); // 글작성 서비스 호출
	    return "redirect:/list"; 
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	  public void read(@RequestParam("bno") int bno, Model model) throws Exception{
		  // 인자값은 파라미터 값으로 기본키인 글번호를 기준으로 Model을 사용하여 불러옴
		model.addAttribute(service.read(bno));
		
		List<ReplyVO> repList = repservice.list(bno);
		model.addAttribute("repList", repList);
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.GET)
	  public void modifyGET(int bno, Model model) throws Exception {
	    model.addAttribute(service.read(bno)); // 수정을 위한 글읽기 서비스 호출
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.POST)
	  public String modifyPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception {
	    service.modify(boardvo); // 글수정 서비스 호출
	    return "redirect:/list";
	  }

	  @RequestMapping(value = "/remove", method = RequestMethod.POST)
	  public String removePOST(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{
		  service.remove(bno); // 글삭제 서비스 호출
		  return "redirect:/list";
	  }

	  @RequestMapping(value = "/list", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	    model.addAttribute("list", service.listSearchCriteria(cri)); //전체목록에 검색페이징 기능+
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(service.listSearchCount(cri));//전체목록에 검색페이징 카운트+
	    model.addAttribute("pageMaker", pageMaker);
	  }
	  
	  @RequestMapping(value = "/centerlist", method = RequestMethod.GET)
	  public void centerListGET() throws Exception {
	}


}
