package com.example.demo.dtos;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UpdateDto<T> {
    T oldValue;
    T newValue;
}
