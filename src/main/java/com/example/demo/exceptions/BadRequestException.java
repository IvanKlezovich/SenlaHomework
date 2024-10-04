package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.BAD_REQUEST;

public class BadRequestException extends BaseException {

  public BadRequestException() {
    super(BAD_REQUEST);
  }

  public BadRequestException(String message) {
    super(BAD_REQUEST, message);
  }
}
