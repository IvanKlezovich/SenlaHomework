package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.SERVICE_UNAVAILABLE;

public class ServiceUnavailableException extends BaseException {

  public ServiceUnavailableException() {
    super(SERVICE_UNAVAILABLE);
  }

  public ServiceUnavailableException(String message) {
    super(SERVICE_UNAVAILABLE, message);
  }
}
