package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.NOT_FOUND;

public class NotFoundException extends BaseException {

  public NotFoundException() {
    super(NOT_FOUND);
  }

  public NotFoundException(String message) {
    super(NOT_FOUND, message);
  }
}
