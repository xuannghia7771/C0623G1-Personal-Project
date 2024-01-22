package com.example.bikercare.home.service;

import com.example.bikercare.home.dto.IProductByType;
import com.example.bikercare.home.dto.ProductForHomePageDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IHomeService {
    List<ProductForHomePageDto> findProductForHomePage(String nameProduct, String nameType);
}
