package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.NOT_ACCEPTABLE;

public class NotAcceptableException extends BaseException {

  public NotAcceptableException() {super(NOT_ACCEPTABLE);
  }

  public NotAcceptableException(String message) {
    super(NOT_ACCEPTABLE, message);
  }
}
