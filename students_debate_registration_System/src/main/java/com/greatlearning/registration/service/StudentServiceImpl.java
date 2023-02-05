package com.greatlearning.registration.service;

import java.io.ByteArrayOutputStream;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greatlearning.registration.entity.Student;
import com.greatlearning.registration.repository.StudentRepository;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepository studentrepo;

	@Override
	public List<Student> findAll() {
		return studentrepo.findAll();
	}

	@Override
	public Student findByid(int studentId) {
		return studentrepo.findById(studentId).get();
	}

	@Override
	public void save(Student student) {
		studentrepo.save(student);
	}

	@Override
	public void deleteById(int studentId) {
		studentrepo.deleteById(studentId);
	}

}
