package com.spring.starter.db.repository;

import com.spring.starter.db.entity.Project;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long> {

    @EntityGraph(attributePaths = {"projectFileList"})
    List<Project> findAll();

    @EntityGraph(attributePaths = {"projectFileList"})
    List<Project> findByJobsId(Long id);
}
