package com.greatlearning.registration.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greatlearning.registration.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

}
