package com.popit.start;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.popit.domain.BoardVO;
import com.popit.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class BoardDAOTest {

	@Inject
	private BoardDAO boardDAO;
	
	@Test
	public void testCreate() throws Exception {
		for (int i = 1; i<= 10; i++) {
			BoardVO vo = new BoardVO();
			vo.setTitle(i+ "��° ����");
			vo.setContent(i + "��° ����");
			vo.setWriter("writer" + i);
			boardDAO.create(vo);
		}
	}

	@Test
	public void testRead() throws Exception {
		boardDAO.read(20).toString();
	}
	
	@Test
	public void testUpdate() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBno(20);
		vo.setTitle("����");
		vo.setContent("����123");
		boardDAO.update(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		boardDAO.delete(29);
	}
}
