package com.example.bikercare.order.repository;

import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.model.CartDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.Optional;

@Repository
public interface ICartRepository extends JpaRepository<CartDetail, Long> {
    @Query(value = "select c.id as idCart, \n" +
            "u.full_name as fullName, \n" +
            "u.address as address, \n" +
            "u.phone as phoneNumber, \n" +
            "p.name_product as productName, \n" +
            "p.price as productPrice, \n" +
            "c.quantity_per_product as productQuantity, \n" +
            "p.id_product as productId, \n" +
            "MIN(i.image_path) as productImage \n" +
            "from cart_detail c \n" +
            "join app_user u on c.app_user_id = u.id \n" +
            "join product p on p.id_product = c.id_product \n" +
            "left join image i on i.id_product = p.id_product \n" +
            "where u.username = :username \n" +
            "group by c.id", nativeQuery = true)
    Collection<CartDto> getCartByUsername(@Param("username") String username);

    @Query(value = "select c.id, c.quantity_per_product, c.app_user_id, c.id_product \n" +
            "from cart_detail c \n" +
            "left join app_user u \n" +
            "on c.app_user_id = u.id \n" +
            "where u.username = :username and c.id_product = :idProduct", nativeQuery = true)
    Optional<CartDetail> findExistedCart(@Param("username") String username, @Param("idProduct") Long idProduct);


    @Transactional
    @Modifying
    @Query(value = "delete c.* " +
            "from cart_detail c " +
            "left join app_user u " +
            "on c.app_user_id = u.id " +
            "where u.username = :username " +
            "and c.id_product = :idProduct", nativeQuery = true)
    void removeByUserAndProduct(@Param("username") String username, @Param("idProduct") Long idProduct);

    @Transactional
    @Modifying
    @Query(value =
            " delete cart_detail.* \n" +
                    "from cart_detail \n" +
                    "left join app_user \n" +
                    "on cart_detail.app_user_id = app_user.id \n" +
                    "where app_user.username = :username ", nativeQuery = true)
    void removeByUser(@Param("username") String username);
}
