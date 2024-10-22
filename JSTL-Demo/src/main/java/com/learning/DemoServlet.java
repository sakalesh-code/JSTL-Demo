package com.learning;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/")
public class DemoServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// res.setContentType("text/html");
		// PrintWriter out= res.getWriter();
		// out.println("<h1>Hello, World!</h1>");
		req.setAttribute("label", "sakalesh");

		Student stud = new Student();
		stud.setRollNo(2);
		stud.setName("sakalesh");
		req.setAttribute("stud", stud);

		List<Student> studList = new ArrayList<Student>();
		studList.add(stud);
		studList.add(new Student(3, "sujani"));
		studList.add(new Student(4, "sakal"));
		req.setAttribute("studList", studList);


		RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
		rd.forward(req, res);
	}
}
