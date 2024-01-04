package com.example.bikebike.product.dto;

import com.example.dawhey.product.model.Image;
import com.example.dawhey.product.model.TypeProduct;

import java.util.List;

public interface IProductDto {
    Long getIdProduct();
    String getNameProduct();
    Integer getPrice();
    String getDescription();
    String getNameType();
    TypeProduct getTypeProduct();
    List<Image> getListImage();

}
