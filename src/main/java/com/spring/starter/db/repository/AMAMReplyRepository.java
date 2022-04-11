package com.spring.starter.db.repository;

import com.spring.starter.db.entity.AMAMReply;
import com.spring.starter.db.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AMAMReplyRepository extends JpaRepository<AMAMReply, Long> {
    Optional<AMAMReply> findByTitleAndUser (String title, User user);
    Optional<AMAMReply> findByUserId (String userId);
    Optional<AMAMReply> findByTitle (String title);
    void deleteByTitle(String title);
}
