package com.example.demo.exeptions;

import static com.example.demo.exeptions.enums.ExceptionType.UNAUTHORIZED;

public class UnauthorizedException extends BaseException {

    public UnauthorizedException(){ super(UNAUTHORIZED); }

    public UnauthorizedException(String message) {
        super(UNAUTHORIZED, message);
    }
}
