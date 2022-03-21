package com.spring.starter.db.repository;

import com.spring.starter.db.entity.Jobs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobsRepository extends JpaRepository<Jobs, Long> {
    Jobs findByNameContaining(String name);
}
