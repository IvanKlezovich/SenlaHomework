package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.CONFLICT;

public class ConflictException extends BaseException {

  public ConflictException() {
    super(CONFLICT);
  }

  public ConflictException(String message) {
    super(CONFLICT, message);
  }
}
