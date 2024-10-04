package com.example.demo.exceptions;

import static com.example.demo.exceptions.enums.ExceptionType.UNAUTHORIZED;

public class UnauthorizedException extends BaseException {

    public UnauthorizedException(){ super(UNAUTHORIZED); }

    public UnauthorizedException(String message) {
        super(UNAUTHORIZED, message);
    }
}
