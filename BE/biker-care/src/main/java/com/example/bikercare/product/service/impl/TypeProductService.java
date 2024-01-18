package com.example.bikercare.product.service.impl;
import com.example.bikercare.product.model.TypeProduct;
import com.example.bikercare.product.repository.ITypeProductRepository;
import com.example.bikercare.product.service.ITypeProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeProductService implements ITypeProductService {
    @Autowired
    private ITypeProductRepository typeProductRepository;
    @Override
    public List<TypeProduct> findAllType() {
        return typeProductRepository.findAllType();
    }
}
