package com.example.bikercare.home.dto;

import javax.persistence.Column;

public interface IProductByType {

    Long getIdProduct();
    String getProductName();
    Long getProductPrice();
    String getProductDescription();
    String getProductImage();

}
