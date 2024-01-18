package com.example.bikercare.home.service;

import com.example.bikercare.home.dto.IProductByType;
import com.example.bikercare.home.dto.ProductForHomePageDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IHomeService {
    List<ProductForHomePageDto> findProductForHomePage(String nameProduct, String nameType);

    Page<ProductForHomePageDto> getListProductWithPagination(String nameProduct, String nameType, Pageable pageable);

    Page<ProductForHomePageDto> searchByPriceWitchPrice(Float priceProduct, Pageable pageable);
    Page<ProductForHomePageDto> searchByPriceSmallPrice(Float priceProduct, Pageable pageable);
    Page<ProductForHomePageDto> searchByPrice(Pageable pageable, String search, String conditional);

    List<IProductByType> getProductByTypeProduct(String type);
}
