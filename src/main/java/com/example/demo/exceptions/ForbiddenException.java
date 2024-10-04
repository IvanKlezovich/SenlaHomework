package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.FORBIDDEN;

public class ForbiddenException extends BaseException {

  public ForbiddenException() {
    super(FORBIDDEN);
  }

  public ForbiddenException(String message) {
    super(FORBIDDEN, message);
  }
}