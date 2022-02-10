package com.spring.starter.api.service;

import org.springframework.stereotype.Service;

import com.spring.starter.db.entity.Area;
import com.spring.starter.db.repository.AreaRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AreaService {

	private final AreaRepository areaRepository;

	public Area nameToArea(String name) {
		return areaRepository.findByName(name).orElse(null);
	}

}
