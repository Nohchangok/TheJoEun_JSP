package day0123;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AjaxController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student s1 = new Student("효도르", 21, new Score(100, 100, 100));
		
		//json 형태로 변경해서 보내줘야한다.
		String result = "";
		Score score = s1.getScore();
		result += "{";
		result += "\"name\" :\""+s1.getName()+"\","; //{"name" : "효도르"}
		result += "\"age\":"+s1.getAge()+",";
		result += "\"score\" : {\"kor\":"+score.getKor()+", \"eng\":"+score.getEng()+", \"math\":"+score.getMath()+"}";
		result += "}";
		
		//인코딩.
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(result);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student s1 = new Student("효도르", 21, new Score(100, 100, 100));
		
		//json 형태로 변경해서 보내줘야한다.
		String result = "";
		Score score = s1.getScore();
		result += "{";
		result += "\"name\" :\""+s1.getName()+"\","; //{"name" : "효도르"}
		result += "\"age\":"+s1.getAge()+",";
		result += "\"score\" : {\"kor\":"+score.getKor()+", \"eng\":"+score.getEng()+", \"math\":"+score.getMath()+"}";
		result += "}";
		

		
		
	}
}
