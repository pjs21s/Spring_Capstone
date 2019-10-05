package com.popit.start;

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
import com.popit.domain.SearchCriteria;
import com.popit.service.BoardService;

@Controller
@RequestMapping(value = "/")
public class BoardController {	

	@Inject   // ����(�ɺθ���) ���
	private BoardService service;

	@RequestMapping(value= "/listAll", method = RequestMethod.GET) // �ּ� ȣ�� ��� . ȣ���Ϸ��� �ּ� �� REST ��ļ��� (GET)
	public void listAll(Model model) throws Exception { // �޼ҵ� ���ڰ��� model �������̽�(jsp���� �ɺθ���)
		model.addAttribute("list",service.listAll());
	}

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	  public void registerGET(BoardVO boardvo, Model model) throws Exception {
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	  public String registPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception { // ���ڰ����� REDIRECT ��� 
		service.regist(boardvo); // ���ۼ� ���� ȣ��
	    return "redirect:/list"; 
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	  public void read(@RequestParam("bno") int bno, Model model) throws Exception{
		  // ���ڰ��� �Ķ���� ������ �⺻Ű�� �۹�ȣ�� �������� Model�� ����Ͽ� �ҷ���
		model.addAttribute(service.read(bno)); // read ���� ȣ��
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.GET)
	  public void modifyGET(int bno, Model model) throws Exception {
	    model.addAttribute(service.read(bno)); // ������ ���� ���б� ���� ȣ��
	  }

	  @RequestMapping(value = "/modify", method = RequestMethod.PUT)
	  public String modifyPOST(BoardVO boardvo, RedirectAttributes rttr) throws Exception {
	    service.modify(boardvo); // �ۼ��� ���� ȣ��
	    return "redirect:/list";
	  }

	  @RequestMapping(value = "/remove", method = RequestMethod.DELETE)
	  public String removePOST(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{
		  service.remove(bno); // �ۻ��� ���� ȣ��
		  return "redirect:/list";
	  }

	  @RequestMapping(value = "/list", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	    model.addAttribute("list", service.listSearchCriteria(cri)); //��ü��Ͽ� �˻�����¡ ���+
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(service.listSearchCount(cri));//��ü��Ͽ� �˻�����¡ ī��Ʈ+
	    model.addAttribute("pageMaker", pageMaker);
	  }
	  
	  @RequestMapping(value = "/centerlist", method = RequestMethod.GET)
	  public void centerListGET() throws Exception {
	}


}
