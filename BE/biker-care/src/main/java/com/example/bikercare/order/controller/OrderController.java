package com.example.bikercare.order.controller;

import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.dto.IOrderDetailDto;
import com.example.bikercare.order.model.Orders;
import com.example.bikercare.order.model.OrdersDetail;
import com.example.bikercare.order.service.IOrderService;
import com.example.bikercare.user.model.AppUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/order")
public class OrderController {
    @Autowired
    private IOrderService orderService;

    @GetMapping("/{username}")
    public ResponseEntity<?> getOrderList(@PathVariable("username") String username) {
        List<Orders> orders = orderService.getOrderByUsername(username);
        if (!orders.isEmpty()) {
            return new ResponseEntity<>(orders, HttpStatus.OK);
        }
        return new ResponseEntity<>("Không tìm thấy danh sách", HttpStatus.NO_CONTENT);
    }

    @GetMapping("/detail/{orderId}")
    public ResponseEntity<Object> getOrderDetailList(@PathVariable Long orderId) {
        List<IOrderDetailDto> orderDetails = orderService.getOrdersDetailByOrderId(orderId);
        if (!orderDetails.isEmpty()) {
            return new ResponseEntity<>(orderDetails, HttpStatus.OK);
        }
        return new ResponseEntity<>("Không tìm thấy danh sách", HttpStatus.NO_CONTENT);
    }
}
