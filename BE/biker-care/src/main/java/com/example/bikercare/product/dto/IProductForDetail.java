package com.example.bikercare.product.dto;

import com.example.bikercare.product.model.Image;
import com.example.bikercare.product.model.TypeProduct;

import java.util.List;

public interface IProductForDetail {
    Long getIdProduct();
    String getProductName();
    Long getProductPrice();
    String getShortDescription();
    String getProductDescription();
    Integer getProductQuantity();
    Long getIdType();
}
