package com.cjc.springmvcCRUDapp.serviceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.springmvcCRUDapp.daoi.StudentDaoi;
import com.cjc.springmvcCRUDapp.model.Student;
import com.cjc.springmvcCRUDapp.servicei.StudentServicei;

@Service
public class StudentServiceIMPL implements StudentServicei{

	@Autowired
	StudentDaoi sdi;
	@Override
	public void saveStudent(Student s) {
		sdi.saveStudent(s);
	}
	@Override
	public List<Student> studentlist(String username, String password) {
		
		return sdi.studentlist(username, password);
	}
	@Override
	public List<Student> deleteStudent(int rollNo) {
		
		return sdi.deleteStudent(rollNo);
	}
	
	@Override
	public Student editStudent(int rollNo) {
		
		return sdi.editStudent(rollNo);
	}
	@Override
	public List<Student> updateStudent(Student s) {
		
		return sdi.updateStudent(s);
	}

}
