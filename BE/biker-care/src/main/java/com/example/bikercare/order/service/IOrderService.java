package com.example.bikercare.order.service;

import com.example.bikercare.order.dto.IOrderDetailDto;
import com.example.bikercare.order.model.Orders;

import java.util.List;
import java.util.Optional;

public interface IOrderService {
    List<Orders> getOrderByUsername(String username);

    List<IOrderDetailDto> getOrdersDetailByOrderId(Long orderId);
}
