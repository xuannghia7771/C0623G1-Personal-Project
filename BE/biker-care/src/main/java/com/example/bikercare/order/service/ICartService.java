package com.example.bikercare.order.service;

import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.dto.OrderPayDto;

import java.util.Collection;

public interface ICartService {
    Collection<CartDto> getCartByUsername(String username);

    boolean addToCart(String username, Long idProduct, Integer quantityPerProduct);

    boolean adjustmentProductInCart(String actionCase, String username, Long idProduct, Integer quantityPerProduct);

    boolean removeFromCart(String username, Long idProduct);

    boolean cartPay(OrderPayDto orderPayDto);

    String orderCodeGenerating();
}
