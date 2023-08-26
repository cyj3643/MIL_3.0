package com.spring.starter.db.repository;

import com.spring.starter.db.entity.FeSubject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubjectRepository extends JpaRepository<FeSubject, Long> {

}
