package com.example.bikercare.order.repository;

import com.example.bikercare.order.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IOrderRepository extends JpaRepository<Orders, Long> {


}
