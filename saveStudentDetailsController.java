package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/saveUpdateStudent")
public class saveStudentDetailsController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Retreiving the details from session
		HttpSession session = req.getSession();
		Student student = (Student) session.getAttribute("OldStudent");
		
 
		//Retreiving the data from form and injecting to old student object
		student.setStudentName(req.getParameter("name"));
		student.setStudentEmail(req.getParameter("email"));
		student.setStudentGender(req.getParameter("gender"));
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Thousheen");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.merge(student);
		entityTransaction.commit();
		
		resp.getWriter().write("<h1>updated..!</h1>");
	}

}
