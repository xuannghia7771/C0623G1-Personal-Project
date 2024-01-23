package com.example.bikercare.order.repository;

import com.example.bikercare.order.model.OrdersDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IOrderDetailRepository extends JpaRepository<OrdersDetail, Long> {

}
