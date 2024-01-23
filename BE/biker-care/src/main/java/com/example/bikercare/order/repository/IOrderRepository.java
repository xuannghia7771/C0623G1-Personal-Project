package com.example.bikercare.order.repository;

import com.example.bikercare.order.dto.IOrderDetailDto;
import com.example.bikercare.order.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IOrderRepository extends JpaRepository<Orders, Long> {

    @Query(value = "select order_code " +
            "from orders " +
            "where order_code = :orderCode", nativeQuery = true)
    String isCodeExisted(@Param("orderCode") String orderCode);

    @Query(value = "select o.id, o.date_time, o.order_code, o.app_user_id \n" +
            "from orders o \n" +
            "join app_user u \n" +
            "on u.id = o.app_user_id \n" +
            "where u.username = :username", nativeQuery = true)
    List<Orders> getOrderByUsername(@Param("username") String username);

    @Query(value = "SELECT od.id as id, \n" +
            "od.quantity as quantity, \n" +
            "od.total_price as totalPrice, \n" +
            "od.id_order as idOrder, \n" +
            "od.id_product as idProduct, \n" +
            "MIN(i.image_path) as image, \n" +
            "p.name_product as productName, \n" +
            "p.price as productPrice, \n" +
            "o.order_code as orderCode \n" +
            "from orders_detail od \n" +
            "join orders o on od.id_order = o.id \n" +
            "join product p on od.id_product = p.id_product \n" +
            "join image i on p.id_product = i.id_product \n" +
            "where od.id_order = :orderId\n" +
            "group by od.id", nativeQuery = true)
    List<IOrderDetailDto> getOrdersDetailByOrderId(@Param("orderId") Long orderId);
}
