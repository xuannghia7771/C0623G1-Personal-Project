package com.example.bikercare.product.service.impl;
import com.example.bikercare.product.dto.IImageDto;
import com.example.bikercare.product.dto.IProductDto;
import com.example.bikercare.product.dto.IProductForDetail;
import com.example.bikercare.product.dto.IProductWithImage;
import com.example.bikercare.product.model.Product;
import com.example.bikercare.product.repository.IProductRepository;
import com.example.bikercare.product.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements IProductService {
    @Autowired
    private IProductRepository productRepository;

    @Override
    public Page<IProductDto> findAllProduct(Pageable pageable, String search) {
        return productRepository.findAllProduct(pageable, search);
    }

    @Override
    public Product findByIdProduct(Long idProduct) {
        return productRepository.findByIdProduct(idProduct);
    }

    @Override
    public List<IProductWithImage> getAll(String nameSearch) {
        return productRepository.findAllProduct(nameSearch);
    }

    @Override
    public Page<IProductDto> searchByCode(Pageable pageable, String codeProduct) {
        return productRepository.searchCode(codeProduct, pageable);
    }

    @Override
    public Page<IProductDto> searchByName(Pageable pageable, String nameProduct) {
        return productRepository.searchNameProduct(nameProduct, pageable);
    }

    @Override
    public Page<IProductDto> searchByType(Pageable pageable, String nameType) {
        return productRepository.searchTypeProduct(nameType, pageable);
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
    public Page<IProductDto> searchByPrice(Pageable pageable, String search, String conditional) {
        Float price = null;
        try {
            price = Float.parseFloat(search);
            switch (conditional) {
                case "greater":
                    return searchByPriceWitchPrice(pageable, price);
                case "small":
                    return searchByPriceSmallPrice(pageable, price);
                default:
                    return findAllProduct(pageable, search);
            }
        } catch (Exception e) {
            return findAllProduct(pageable, search);
        }
    }

    @Override
    public boolean existsByIdAndFlagDeletedIsFalse(Long idProduct) {
        return productRepository.existsByIdProductAndFlagDeletedIsFalse(idProduct);
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
}
