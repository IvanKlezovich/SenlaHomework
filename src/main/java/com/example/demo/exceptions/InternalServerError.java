package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.INTERNAL_SERVER_ERROR;

public class InternalServerError extends BaseException {

  public InternalServerError() {
    super(INTERNAL_SERVER_ERROR);
  }

  public InternalServerError(String message) {
    super(INTERNAL_SERVER_ERROR, message);
  }

}
