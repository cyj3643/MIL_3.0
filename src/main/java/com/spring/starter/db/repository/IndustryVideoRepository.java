package com.spring.starter.db.repository;

import com.spring.starter.db.entity.IndustryVideo;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IndustryVideoRepository extends JpaRepository<IndustryVideo, Long> {

    @EntityGraph(attributePaths = {"jobs"})
    List<IndustryVideo> findByJobsId(Long id);

    @EntityGraph(attributePaths = {"jobs"})
    List<IndustryVideo> findAll();

}
