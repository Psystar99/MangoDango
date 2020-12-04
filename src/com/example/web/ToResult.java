package com.example.web;

import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.data.*;

@WebServlet("/ToResult")
public class ToResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ToResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		
		String result = request.getParameter("result");
		request.setAttribute("result", result);
		
		TestResult re = new TestResult();
		List info = (List)re.TRinfo(result);
		request.setAttribute("info", info);
		
		RequestDispatcher view = request.getRequestDispatcher("Result.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}