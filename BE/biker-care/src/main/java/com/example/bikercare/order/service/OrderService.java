package com.example.bikercare.order.service;

import com.example.bikercare.order.repository.IOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService implements IOrderService{
    @Autowired
    private IOrderRepository orderRepository;
}
