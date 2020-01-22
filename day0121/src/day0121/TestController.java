package day0121;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//브라우저의 요청을  받아서  처리하는 아이.
public class TestController extends HttpServlet{
	
	//get으로 요청 받았을 때 실행하는 메소드.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		String pageNumberStr = req.getParameter("page"); 
		int pageNumber = 1;
		if(pageNumberStr !=null){
			pageNumber = Integer.parseInt(pageNumberStr);
		}
		MessageListService service = new MessageListService();
		
		MessageListView viewData = service.getMessageListView(pageNumber);
		
		//결과화면으로 보내줄 데이터를 request 객체에 담는다.
		req.setAttribute("viewData", viewData);
		
		//WEB-INF안에 있을시 외부URL로 요청해도 접근 불가(보안)
		req.getRequestDispatcher("/WEB-INF/view.jsp").forward(req, resp);
	}
}
