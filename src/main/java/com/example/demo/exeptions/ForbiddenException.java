package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.FORBIDDEN;

public class ForbiddenException extends BaseException {

  public ForbiddenException() {
    super(FORBIDDEN);
  }

  public ForbiddenException(String message) {
    super(FORBIDDEN, message);
  }
}
