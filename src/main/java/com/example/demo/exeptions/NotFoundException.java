package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.NOT_FOUND;

public class NotFoundException extends BaseException {

  public NotFoundException() {
    super(NOT_FOUND);
  }

  public NotFoundException(String message) {
    super(NOT_FOUND, message);
  }
}
