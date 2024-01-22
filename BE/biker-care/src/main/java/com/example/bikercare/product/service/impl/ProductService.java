package com.example.bikercare.product.service.impl;
import com.example.bikercare.product.dto.*;
import com.example.bikercare.product.model.Product;
import com.example.bikercare.product.repository.IProductRepository;
import com.example.bikercare.product.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService implements IProductService {
    @Autowired
    private IProductRepository productRepository;

    @Override
    public Page<IProductDto> findAllProduct(Pageable pageable, String search) {
        return productRepository.getAllProductForHomePage(pageable, search);
    }

    @Override
    public Product findByIdProduct(Long idProduct) {
        return productRepository.findByIdProduct(idProduct);
    }

    @Override
    public List<IProductWithImage> getAllProductForHomePage(String nameSearch) {
        return productRepository.getAllProductForHomePage(nameSearch);
    }

    @Override
    public Page<IProductDto> searchByPriceWitchPrice(Pageable pageable, Float priceProduct) {
        return productRepository.searchWithGreaterThanOrEqualPrice(priceProduct, pageable);
    }

    @Override
    public Page<IProductDto> searchByPriceSmallPrice(Pageable pageable, Float priceProduct) {
        return productRepository.searchWithSmallerThanOrEqualPrice(priceProduct, pageable);
    }

    @Override
    public List<Product> getProductWithName(String nameSearch) {
        return productRepository.getProductWithName(nameSearch);
    }

    @Override
    public IProductForDetail getProductById(Long idProduct) {
        return productRepository.getProductById(idProduct);
    }

    @Override
    public List<IImageDto> getAllImageByProductId(Long idProduct) {
        return productRepository.getAllImageByProductId(idProduct);
    }

    @Override
    public Page<ProductForListingPageDto> getAllProductWithFilter(String nameProduct, String nameType, Pageable pageable) {
        return productRepository.getAllProductWithFilter(nameProduct, nameType, pageable);
    }

    @Override
    public List<IProductWithImage> getProductByIdType(Long idType) {
        return productRepository.getProductByIdType(idType);
    }

    @Override
    public Optional<Product> findById(Long idProduct) {
        return productRepository.findById(idProduct);
    }
}
