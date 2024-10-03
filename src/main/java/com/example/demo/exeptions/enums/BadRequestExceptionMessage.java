package com.example.demo.exeptions.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum BadRequestExceptionMessage {
  INVALID_DOCUMENT_NAME("Неверное название документа"),
  INVALID_CUSTOMER_ID("Неверный идентификатор клиента"),
  INVALID_INPUT_DATA("Неверные входные данные. Укажите корректные значения входных данных"),
  INVALID_REQUEST_BODY("Не удалось прочитать тело запроса. Укажите корректные JSON данные"),
  INVALID_ARGUMENT_TYPE("Неверный тип аргумента. Укажите правильный тип параметра"),
  VALIDATION_FAILED(
      "Валидация не удалась. Пожалуйста, проверьте входные данные и повторите попытку"),
  TOO_MANY_REQUESTS("Превышено допустимое число запросов к сервису. Попробуйте позже."),
  IMAGE_ABSENT("Отсутствует файл с изображением или у него нет имени"),
  BROKER_ACCOUNT_IS_NOT_OPEN(
      "Для совершения операции брокерский аккаунт должен иметь статус 'OPEN'"),
  INSUFFICIENT_FUNDS(
      "Не достаточно средств.");//спросить Не достаточно средств это ConflictException или BadRequestException
  private final String message;

}
