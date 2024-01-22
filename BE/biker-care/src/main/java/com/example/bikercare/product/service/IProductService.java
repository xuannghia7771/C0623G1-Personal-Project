package com.example.bikercare.product.service;
import com.example.bikercare.product.dto.*;
import com.example.bikercare.product.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface IProductService {
    Page<IProductDto> findAllProduct(Pageable pageable, String search);
    Product findByIdProduct(Long idProduct);
    List<IProductWithImage> getAllProductForHomePage(String nameSearch);
    Page<IProductDto> searchByPriceWitchPrice(Pageable pageable, Float priceProduct);
    Page<IProductDto> searchByPriceSmallPrice(Pageable pageable, Float priceProduct);
    List<Product> getProductWithName(String nameSearch);
    IProductForDetail getProductById(Long idProduct);
    List<IImageDto> getAllImageByProductId(Long idProduct);

    Page<ProductForListingPageDto> getAllProductWithFilter(String nameProduct, String nameType, Pageable pageable);

    List<IProductWithImage> getProductByIdType(Long idType);

    Optional<Product> findById(Long idProduct);
}
