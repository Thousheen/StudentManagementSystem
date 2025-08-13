package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/findStudentOnNameDetails")
public class FindStudentDetailsOnNameController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Thousheen");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		Query query = entityManager.createQuery("select s from Student s where studentName=?1");
		query.setParameter(1, name);
		
		List<Student> list = query.getResultList();
//		System.out.println(list);  we are not going to print on the browser
		
		Student student = null;
		for(Student lv : list) {
			if(lv.getStudentName()==name) 
				student=lv;
			
		}
		
		if(student !=null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("findStudentNameDetails.jsp");
			
			req.setAttribute("student", student);
			dispatcher.forward(req, resp);
		}
		
		else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
			dispatcher.include(req, resp);
		}
	}

}
