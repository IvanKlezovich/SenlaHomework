package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.CONFLICT;

public class ConflictException extends BaseException {

  public ConflictException() {
    super(CONFLICT);
  }

  public ConflictException(String message) {
    super(CONFLICT, message);
  }
}
