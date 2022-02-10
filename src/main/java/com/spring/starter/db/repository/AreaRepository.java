package com.spring.starter.db.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.starter.db.entity.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area, Long> {
	Optional<Area> findByName(String name);
}
