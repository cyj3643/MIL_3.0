package com.spring.starter.db.repository;

import com.spring.starter.db.entity.AMAMReply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AMAMReplyRepository extends JpaRepository<AMAMReply, Long> {
    Optional<AMAMReply> findByUserId (String userId);
}
