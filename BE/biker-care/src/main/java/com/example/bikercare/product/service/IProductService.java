package com.example.bikercare.product.service;
import com.example.bikercare.product.dto.IImageDto;
import com.example.bikercare.product.dto.IProductDto;
import com.example.bikercare.product.dto.IProductForDetail;
import com.example.bikercare.product.dto.IProductWithImage;
import com.example.bikercare.product.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IProductService {
    Page<IProductDto> findAllProduct(Pageable pageable, String search);
    Product findByIdProduct(Long idProduct);
    List<IProductWithImage> getAll(String nameSearch);
    Page<IProductDto> searchByCode(Pageable pageable, String codeProduct);
    Page<IProductDto> searchByName(Pageable pageable, String nameProduct);
    Page<IProductDto> searchByType(Pageable pageable, String nameType);
    Page<IProductDto> searchByPriceWitchPrice(Pageable pageable, Float priceProduct);
    Page<IProductDto> searchByPriceSmallPrice(Pageable pageable, Float priceProduct);
    Page<IProductDto> searchByPrice(Pageable pageable, String search, String conditional);
    boolean existsByIdAndFlagDeletedIsFalse(Long idProduct);

    List<Product> getProductWithName(String nameSearch);

    IProductForDetail getProductById(Long idProduct);

    List<IImageDto> getAllImageByProductId(Long idProduct);
}
