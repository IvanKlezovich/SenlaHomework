package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.SERVICE_UNAVAILABLE;

public class ServiceUnavailableException extends BaseException {

  public ServiceUnavailableException() {
    super(SERVICE_UNAVAILABLE);
  }

  public ServiceUnavailableException(String message) {
    super(SERVICE_UNAVAILABLE, message);
  }
}
