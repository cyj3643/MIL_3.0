package com.spring.starter.db.repository;

import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.AreaSubject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AreaSubjectRepository extends JpaRepository<AreaSubject,Long> {
    List<AreaSubject> findByArea(Optional<Area> area);
}
