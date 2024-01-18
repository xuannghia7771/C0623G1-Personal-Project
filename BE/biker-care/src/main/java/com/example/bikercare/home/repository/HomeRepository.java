package com.example.bikercare.home.repository;

import com.example.bikercare.home.dto.IProductByType;
import com.example.bikercare.home.dto.ProductForHomePageDto;
import com.example.bikercare.product.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface HomeRepository extends JpaRepository<Product, Long> {
    @Query(value = "SELECT " +
            "p.id_product AS idProduct, " +
            "p.name_product AS nameProduct, " +
            "p.price AS price, " +
            "t.name_type AS nameType, " +
            " MIN(im.image_path) AS imageProduct " +
            "FROM product p " +
            "JOIN " +
            "type_product t ON p.id_type = t.id_type " +
            "JOIN " +
            "image im ON p.id_product = im.id_product " +
            "WHERE " +
            "p.flag_deleted = false " +
            "AND p.name_product LIKE CONCAT('%', :nameProduct ,'%') " +
            "AND t.name_type LIKE CONCAT('%', :nameType ,'%') " +
            "GROUP BY " +
            "p.id_product, p.name_product, p.price, t.name_type ORDER BY p.id_product DESC LIMIT 10", nativeQuery = true)
    List<ProductForHomePageDto> findProductForHomePage(@Param("nameProduct") String nameProduct, @Param("nameType") String nameType);

    @Query(value = "SELECT " +
            "p.id_product AS idProduct, " +
            "p.name_product AS nameProduct, " +
            "p.price AS price, " +
            "t.name_type AS nameType, " +
            " im.image_path AS imageProduct " +
            "FROM product p " +
            "JOIN type_product t ON p.id_type = t.id_type " +
            "JOIN image im ON p.id_product = im.id_product " +
            "WHERE " +
            "p.flag_deleted = false " +
            "AND p.name_product LIKE CONCAT('%', :nameProduct ,'%') " +
            "AND t.name_type LIKE CONCAT('%', :nameType ,'%')" +
            " GROUP BY p.id_product, p.name_product, p.price, t.name_type ", nativeQuery = true)
    Page<ProductForHomePageDto> getListProductWithPagination(@Param("nameProduct") String nameProduct,
                                                             @Param("nameType") String nameType,
                                                             Pageable pageable);

    @Query(value = "SELECT" +
            "            p.id_product AS idProduct," +
            "            p.name_product AS nameProduct," +
            "            p.price AS price," +
            "            t.name_type AS nameType," +
            "            im.image_path AS imageProduct" +
            "            FROM product p" +
            "            JOIN type_product t ON p.id_type = t.id_type" +
            "            JOIN image im ON p.id_product = im.id_product" +
            "            WHERE" +
            "            p.flag_deleted = false" +
            " AND p.name_product LIKE CONCAT('%', :nameProduct ,'%') " +
            " AND t.name_type LIKE CONCAT('%', :nameType ,'%')" +
            "            AND p.price <= :priceProduct" +
            "            GROUP BY p.id_product, p.name_product, p.price, t.name_type", nativeQuery = true)
    Page<ProductForHomePageDto> searchWithGreaterThanOrEqualPriceHome(@Param("priceProduct") Float priceProduct, Pageable pageable);

    @Query(value = "SELECT" +
            "            p.id_product AS idProduct," +
            "            p.name_product AS nameProduct," +
            "            p.price AS price," +
            "            t.name_type AS nameType," +
            "            im.image_path AS imageProduct" +
            "            FROM product p" +
            "            JOIN type_product t ON p.id_type = t.id_type" +
            "            JOIN image im ON p.id_product = im.id_product" +
            "            WHERE" +
            "            p.flag_deleted = false" +
            " AND p.name_product LIKE CONCAT('%', :nameProduct ,'%') " +
            " AND t.name_type LIKE CONCAT('%', :nameType ,'%')" +
            "            AND p.price >= :priceProduct" +
            "            GROUP BY p.id_product, p.name_product, p.price, t.name_type", nativeQuery = true)
    Page<ProductForHomePageDto> searchWithSmallerThanOrEqualPriceHome(@Param("priceProduct") Float priceProduct, Pageable pageable);


    @Query(value = "SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, " +
            "p.price AS productPrice, p.description as productDescription, " +
            "MIN(i.image_path) AS productImage " +
            "FROM product p " +
            "JOIN image i ON p.id_product = i.id_product " +
            "WHERE p.id_type like 3 " +
            "GROUP BY p.id_product " +
            "ORDER BY p.id_product desc " +
            "LIMIT 8", nativeQuery = true)
    List<IProductByType> getProductByTypeProduct(@Param("type") String type);
}
