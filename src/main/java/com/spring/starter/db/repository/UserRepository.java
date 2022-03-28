package com.spring.starter.db.repository;

import java.util.List;
import java.util.Optional;

import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.Authority;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.starter.db.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	Optional<User> findByName(String name);

	Optional<User> findByEmail(String email);

	Optional<User> findByUserId(String userId);

	List<User> findByAreaAndAuthority(Area area, Authority authority);
}
