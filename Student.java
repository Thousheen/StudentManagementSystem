package dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	private String studentName;
	private String studentEmail;
	private long studentPhno;
	private String studentGender;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public long getStudentPhno() {
		return studentPhno;
	}

	public void setStudentPhno(long studentPhno) {
		this.studentPhno = studentPhno;
	}

	public String getStudentGender() {
		return studentGender;
	}

	public void setStudentGender(String studentGender) {
		this.studentGender = studentGender;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", studentEmail=" + studentEmail
				+ ", studentPhno=" + studentPhno + ", studentGender=" + studentGender + "]";
	}

	public Student() {
		super();
	}

	public Student(String studentName, String studentEmail, long studentPhno, String studentGender) {
		super();

		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.studentPhno = studentPhno;
		this.studentGender = studentGender;
	}

}
