package com.spring.starter.common.interceptor;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.AsyncHandlerInterceptor;

import lombok.extern.slf4j.Slf4j;

@Slf4j(topic = "DEFAULT_FILE_LOGGER")
@Component
	public class LogInterceptor implements AsyncHandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws
		IOException {
		log.info("Method : {} Req URL : {}", request.getMethod(), request.getRequestURL());
		log.info("Body : {}", request.getReader().lines().collect(Collectors.joining(System.lineSeparator())));
		return true;
	}
}
