package com.spring.starter.common.exception;

import java.util.Arrays;
import java.util.Objects;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.spring.starter.common.model.BaseResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j(topic = "ERROR_FILE_LOGGER")
@RestControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(value = MethodArgumentNotValidException.class)
	protected ResponseEntity<BaseResponse> handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
		String defaultMessage = Objects.requireNonNull(e.getBindingResult().getFieldError()).getDefaultMessage();
		log.error("handleMethodArgumentNotValidException : ", defaultMessage);
		return ResponseEntity.status(500).body(new BaseResponse(defaultMessage, 500));
	}

	@ExceptionHandler(value = Exception.class)
	public ResponseEntity<BaseResponse> handleException(Exception e) {
		log.error(Arrays.toString(e.getStackTrace()));
		return ResponseEntity.status(500).body(new BaseResponse(e.getMessage(), 500));
	}

}

