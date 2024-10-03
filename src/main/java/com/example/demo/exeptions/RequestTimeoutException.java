package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.REQUEST_TIMEOUT;

public class RequestTimeoutException extends BaseException{

  public RequestTimeoutException(String message) {
    super(REQUEST_TIMEOUT);
  }

  public RequestTimeoutException(String message, Throwable cause) {
    super(REQUEST_TIMEOUT, message);
  }

}
