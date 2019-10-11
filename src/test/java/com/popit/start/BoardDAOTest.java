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
	public void testRead() throws Exception {
		boardDAO.read(1).toString();
	}
	
	@Test
	public void testUpdate() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBno(1);
		vo.setTitle("제목");
		vo.setContent("내용123");
		boardDAO.update(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		boardDAO.delete(1);
	}
}
