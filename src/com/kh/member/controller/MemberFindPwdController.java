package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

import static com.kh.common.RandomCodeGenerator.*;

/**
 * Servlet implementation class MemberFindIdController
 */
@WebServlet("/findPwd.me")
public class MemberFindPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberFindPwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// POST > UTF-8로 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 입력 값 가져오기
		String userName = request.getParameter("userName");
		
		// 휴대전화번호 가공
		String phoneF = request.getParameter("phoneF");
		String phoneM = request.getParameter("phoneM");
		String phoneB = request.getParameter("phoneB");
		String phone = phoneF + "-" + phoneM + "-" + phoneB;
		
		// 랜덤코드 (비밀번호)
		String randomCode = getRandomCode();
		
		// 입력 값 Member m에 담기
		Member inputList = new Member(randomCode, userName, phone);
		
		// Member m 전달, 처리 값 int result 받기
		int result = new MemberService().findPwdMember(inputList);
		
		HttpSession session = request.getSession();
		
		if (result > 0) { // 조회 성공
			
			String message = userName + "님의 임시 비밀번호는 " + randomCode + " 입니다.";
			
			session.setAttribute("message", message);
			
			// 비밀번호 찾기 완료 페이지로 이동
			response.sendRedirect(request.getContextPath() + "/findFin.me?type=1");
			
		} else { // 조회 실패
			
			String message = "입력하신 정보가 일치하지 않습니다. 다시 확인 후 시도해주세요.";
			
			session.setAttribute("message", message);
			
			// 비밀번호 찾기 완료 페이지로 이동
			response.sendRedirect(request.getContextPath() + "/findFin.me?type=1");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
