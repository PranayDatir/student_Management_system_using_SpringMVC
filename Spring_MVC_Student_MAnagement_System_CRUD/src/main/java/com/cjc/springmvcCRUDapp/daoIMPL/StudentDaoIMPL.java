package com.cjc.springmvcCRUDapp.daoIMPL;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjc.springmvcCRUDapp.daoi.StudentDaoi;
import com.cjc.springmvcCRUDapp.model.Student;

@Repository
public class StudentDaoIMPL implements StudentDaoi{

	
	@Autowired
	SessionFactory sf;
	
	@Override
	public void saveStudent(Student s) {
		
		Session session = sf.openSession();
		Transaction tr=  session.beginTransaction();
		
		session.save(s);
		
		tr.commit();
	}

	@Override
	public List<Student> studentlist(String username, String password) {
		if(username.equals("ADMIN") && (password.equals("ADMIN"))) {
			Session session = sf.openSession();
			List<Student> stu_list =session.createQuery("from Student").getResultList();
			return stu_list;
		}
		else
		{
			Session session = sf.openSession();
			Query<Student> q_list =session.createQuery("from Student where username=? and password=?");
			q_list.setParameter(0, username);
			q_list.setParameter(1, password);
			
			List<Student> sList=q_list.getResultList();
			return sList;
		}
	}

	public List<Student> getStudent(){
		Session session = sf.openSession();
		List<Student> list = session.createQuery("from Student").getResultList();
		return list;
	}
	
	@Override
	public List<Student> deleteStudent(int rollNo) {
			Session session = sf.openSession();
			Query<Student> qstudel=session.createQuery("delete from Student where rollNo="+rollNo);
			Transaction tr = session.beginTransaction();
			qstudel.executeUpdate();
			tr.commit();
		return getStudent();
	}

	@Override
	public Student editStudent(int rollNo) {
		Session session = sf.openSession();		
		return session.get(Student.class, rollNo);
	}

	@Override
	public List<Student> updateStudent(Student s) {
		Session session = sf.openSession();
		session.update(s);
		session.beginTransaction().commit();
		return getStudent();
	}
}