package day0121;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//doGet은 글쓰기 위한 화면.
		req.getRequestDispatcher("/WEB-INF/write.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//doPost 글을 작성후 저장 요청.	
		//요청된 파라미터를 받고 dto에 담고.
		req.setCharacterEncoding("utf-8");
		String guestName = req.getParameter("guestName");
		String message = req.getParameter("message");
		
		//dto담자
		MessageDto messageDto = new MessageDto(0, guestName, message, LocalDateTime.now());
		
		//writeService 객체를 이용해서 로직처리를한다(db저장).
		WriteService writeService = new WriteService();
		
		//서비스로 쓰기.
		writeService.writeMessage(messageDto);
		
		//결과를 보내준다.
		req.getRequestDispatcher("/WEB-INF/writeResult.jsp").forward(req, resp);
		
	}
}
