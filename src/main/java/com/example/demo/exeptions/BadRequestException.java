package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.BAD_REQUEST;

public class BadRequestException extends BaseException {

  public BadRequestException() {
    super(BAD_REQUEST);
  }

  public BadRequestException(String message) {
    super(BAD_REQUEST, message);
  }
}
