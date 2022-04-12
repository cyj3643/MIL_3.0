package com.spring.starter.db.repository;

import com.spring.starter.db.entity.ReplyCertification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyCertificationRepository extends JpaRepository<ReplyCertification, Long> {
    ReplyCertification findByCode(String code);
}
