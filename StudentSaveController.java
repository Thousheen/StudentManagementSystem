package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/addStudent")
public class StudentSaveController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		long phno = Long.parseLong(req.getParameter("phno"));

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Thousheen");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		Student student = new Student(name, email, phno, gender);
		entityManager.persist(student);
		entityTransaction.commit();

		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		req.setAttribute("msg", "Student saved successfully..!");// this method is going to print on the browser when student is saved on the DB it will show the result in landing page
		/* here we are setting the attribute to print on the browser*/
		dispatcher.include(req, resp);

	}

}
