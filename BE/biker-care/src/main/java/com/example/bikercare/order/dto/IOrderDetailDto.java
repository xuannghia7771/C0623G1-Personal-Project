package com.example.bikercare.order.dto;

public interface IOrderDetailDto {
    Long getId();
    Integer getQuantity();
    Long getTotalPrice();
    Long getIdOrder();
    Long getIdProduct();
    String getImage();
    String getProductName();
    Long getProductPrice();
    String getOrderCode();
}
