package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.NOT_ACCEPTABLE;

public class NotAcceptableException extends BaseException {

  public NotAcceptableException() {super(NOT_ACCEPTABLE);
  }

  public NotAcceptableException(String message) {
    super(NOT_ACCEPTABLE, message);
  }
}
