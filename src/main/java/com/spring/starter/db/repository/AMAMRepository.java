package com.spring.starter.db.repository;

import com.spring.starter.db.entity.AMAM;
import com.spring.starter.db.entity.Area;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

@Repository
public interface AMAMRepository extends JpaRepository<AMAM, Long> {
    Page<AMAM> findByArea (Area area, Pageable pageable);
    Optional<AMAM> findByTitle (String title);
    Page<AMAM> findAll(Pageable pageable);
}
