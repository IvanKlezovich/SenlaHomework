package com.example.demo.service;

import com.example.demo.dtos.BookEditionDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface BookEditionService {
    List<BookEditionDto> getAllBookEdition();
    ResponceDto delete(BookEditionDto bookEditionDto);
    ResponceDto save(BookEditionDto bookEditionDto);
    ResponceDto update(UpdateDto<BookEditionDto> bookEditionDtoUpdateDto);
}
