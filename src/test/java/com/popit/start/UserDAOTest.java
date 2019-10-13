package com.popit.start;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.popit.domain.UserVO;
import com.popit.persistence.UserDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class UserDAOTest {
	
	@Inject
	private UserDAO userDAO;
	
	@Test
	public void testCreate() throws Exception{
		UserVO vo = new UserVO();
		vo.setPassword("j1234");
		String hashedPw = BCrypt.hashpw(vo.getPassword(), BCrypt.gensalt());
		
		vo.setEmail("j2u@ju.com");
		vo.setPassword(hashedPw);
		vo.setName("22it");
		userDAO.insertUser(vo);
	}
	
}
