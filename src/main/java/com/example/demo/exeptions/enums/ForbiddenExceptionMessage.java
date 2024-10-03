package com.example.demo.exeptions.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum ForbiddenExceptionMessage {
  ACCOUNT_CREATION_DENIED("Создание новых аккаунтов запрещено. Обратитесь в офис");
  private final String message;
}
