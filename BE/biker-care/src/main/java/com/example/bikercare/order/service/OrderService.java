package com.example.bikercare.order.service;

import com.example.bikercare.order.dto.IOrderDetailDto;
import com.example.bikercare.order.model.Orders;
import com.example.bikercare.order.repository.IOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService implements IOrderService{
    @Autowired
    private IOrderRepository orderRepository;

    @Override
    public List<Orders> getOrderByUsername(String username) {
        return orderRepository.getOrderByUsername(username);
    }

    @Override
    public List<IOrderDetailDto> getOrdersDetailByOrderId(Long orderId) {
        return orderRepository.getOrdersDetailByOrderId(orderId);
    }
}
