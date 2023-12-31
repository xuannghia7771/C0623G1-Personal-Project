package com.example.bikebike.product.service;
import com.example.dawhey.product.dto.IProductDto;
import com.example.dawhey.product.dto.ProductDro;
import com.example.dawhey.product.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IProductService {
    Page<IProductDto> findAllProduct(Pageable pageable, String search);
    Product findByIdProduct(Long idProduct);
    List<Product> getAll();
    Page<IProductDto> searchByCode(Pageable pageable, String codeProduct);
    Page<IProductDto> searchByName(Pageable pageable, String nameProduct);
    Page<IProductDto> searchByType(Pageable pageable, String nameType);
    Page<IProductDto> searchByPriceWitchPrice(Pageable pageable, Float priceProduct);
    Page<IProductDto> searchByPriceSmallPrice(Pageable pageable, Float priceProduct);
    Page<IProductDto> searchByPrice(Pageable pageable, String search, String conditional);
    boolean existsByIdAndFlagDeletedIsFalse(Long idProduct);

    List<IProductDto> getAllProduct();
}
