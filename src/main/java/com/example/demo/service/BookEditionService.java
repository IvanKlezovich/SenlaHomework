package com.example.demo.service;

import com.example.demo.dtos.BookEditionDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface BookEditionService {
    List<BookEditionDto> getAllBookEdition();
    ResponseDto delete(BookEditionDto bookEditionDto);
    ResponseDto save(BookEditionDto bookEditionDto);
    ResponseDto update(UpdateDto<BookEditionDto> bookEditionDtoUpdateDto);
}
