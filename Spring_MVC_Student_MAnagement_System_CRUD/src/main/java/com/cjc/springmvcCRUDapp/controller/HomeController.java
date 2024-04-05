package com.cjc.springmvcCRUDapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.springmvcCRUDapp.model.Student;
import com.cjc.springmvcCRUDapp.servicei.StudentServicei;

@Controller
public class HomeController {
	@Autowired
	StudentServicei ssi;
	
	@RequestMapping("/")
	public String preLogin() {
		System.out.println("OPEN First PAGE");
		return "login";
		
	}
	
	@RequestMapping("/openregpage")
	public String preRegister() {
		System.out.println("open Register PAge");
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveData(@ModelAttribute Student stu) {
		
		ssi.saveStudent(stu);
		return "login";
	}
	
	@RequestMapping("/login")
	public String checkLogin(@RequestParam String username, @RequestParam String password,Model m) {
		
		List<Student> list=ssi.studentlist(username, password);
		
		if(!list.isEmpty())
		{
			System.out.println("in true");
			m.addAttribute("data",list);
			return "success";	
		}
		else {
			System.out.println("in false");
			m.addAttribute("message","Invalid Details");
			return "login";
		}
	}	
	
	@RequestMapping("/delete")
	public String delelteData(@RequestParam int rollNo, Model m){
		List<Student> lstu= ssi.deleteStudent(rollNo);
		m.addAttribute("data",lstu);
		return "success";
	}
	
	@RequestMapping("/editpage")
	public String editStudent(@RequestParam int rollNo,Model m) {	
		Student s = ssi.editStudent(rollNo);
		m.addAttribute("stu",s);
		return "editstudent";
	}
	
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student s, Model m) {
		
		List< Student> list = ssi.updateStudent(s);
		m.addAttribute("data",list);
		return "success";
	}
}