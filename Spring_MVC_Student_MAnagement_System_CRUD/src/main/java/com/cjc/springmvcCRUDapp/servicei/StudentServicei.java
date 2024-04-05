package com.cjc.springmvcCRUDapp.servicei;

import java.util.List;

import com.cjc.springmvcCRUDapp.model.Student;

public interface StudentServicei {
	public void saveStudent(Student s);
	public List<Student> studentlist(String username, String password);
	public List<Student> deleteStudent(int rollNo);
	public Student editStudent(int rollNo);
	public List<Student> updateStudent(Student s);
	
}
