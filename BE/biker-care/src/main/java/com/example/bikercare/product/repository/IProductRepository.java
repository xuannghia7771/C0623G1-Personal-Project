package com.example.bikercare.product.repository;
import com.example.bikercare.product.dto.IImageDto;
import com.example.bikercare.product.dto.IProductDto;
import com.example.bikercare.product.dto.IProductForDetail;
import com.example.bikercare.product.dto.IProductWithImage;
import com.example.bikercare.product.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface IProductRepository extends JpaRepository<Product, Long> {
    String PREFIX_SEARCH_NOT_PRICE = "SELECT p.id_product AS idProduct,\n" +
            "       p.code_product AS codeProduct,\n" +
            "       p.name_product AS nameProduct,\n" +
            "       p.price        AS price,\n" +
            "       p.description  AS description,\n" +
            "       t.name_type    AS nameType\n" +
            "       FROM biker_care.product p\n" +
            "         JOIN\n" +
            "     type_product t ON p.id_type = t.id_type ";

    @Transactional
    @Modifying
    @Query(value = "UPDATE product p set p.flag_deleted = true WHERE p.id_product = :idProduct",nativeQuery = true)
    int deleteProductById(@Param("idProduct") Long idProduct);

    @Query(value = "SELECT p.id_product, p.name_product, p.price, p.description, p.short_description, " +
            "p.quantity, p.flag_deleted, t.id_type " +
            "FROM biker_care.product p " +
            "JOIN biker_care.type_product t ON p.id_type = t.id_type " +
            "WHERE p.id_product = :idProduct " +
            "AND p.flag_deleted = false" ,nativeQuery = true)
    Product findByIdProduct(@Param("idProduct") Long idProduct);

    @Query(value = PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false " +
            "GROUP BY " +
            "p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type", nativeQuery = true)
    Page<IProductDto> findAllProduct(Pageable pageable, @Param("search") String search);

    @Query(value = PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false" +
            " AND p.code_product like CONCAT('%', :codeProduct ,'%')" +
            " GROUP BY" +
            " p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type",nativeQuery = true)
    Page<IProductDto> searchCode(@Param("codeProduct") String codeProduct, Pageable pageable);

    @Query(value =PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false " +
            "AND p.name_product LIKE CONCAT('%', :nameProduct ,'%') " +
            "GROUP BY " +
            "p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type",nativeQuery = true)
    Page<IProductDto> searchNameProduct(@Param("nameProduct") String nameProduct, Pageable pageable);

    @Query(value = PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false " +
            "AND t.name_type LIKE CONCAT('%', :nameType ,'%') " +
            "GROUP BY " +
            "p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type",nativeQuery = true)
    Page<IProductDto> searchTypeProduct(@Param("nameType") String nameType, Pageable pageable);

    @Query(value = PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false " +
            "AND p.price <= :priceProduct " +
            "GROUP BY " +
            "p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type",nativeQuery = true)
    Page<IProductDto> searchWithGreaterThanOrEqualPrice(@Param("priceProduct") Float priceProduct, Pageable pageable);

    @Query(value = PREFIX_SEARCH_NOT_PRICE +
            " WHERE p.flag_deleted = false " +
            "AND p.price >= :priceProduct " +
            "GROUP BY " +
            "p.id_product, p.code_product, p.name_product, p.price, p.description, t.name_type",nativeQuery = true)
    Page<IProductDto> searchWithSmallerThanOrEqualPrice(@Param("priceProduct") Float priceProduct, Pageable pageable);

    @Query(value = "SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, " +
            "p.price AS productPrice, p.description as productDescription, " +
            "MIN(i.image_path) AS productImage " +
            "FROM product p " +
            "JOIN image i ON p.id_product = i.id_product " +
            "WHERE p.name_product like CONCAT('%',:nameSearch,'%') " +
            "GROUP BY p.id_product ", nativeQuery = true)
    List<IProductWithImage> findAllProduct(@Param("nameSearch") String nameSearch);

    boolean existsByIdProductAndFlagDeletedIsFalse(Long idProduct);

    @Query(value = "SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, " +
            "p.price AS productPrice, p.description as productDescription, " +
            "MIN(i.image_path) AS productImage " +
            "FROM product p " +
            "JOIN image i ON p.id_product = i.id_product " +
            "GROUP BY p.id_product ", nativeQuery = true)
    List<Product> getProductWithName(String nameSearch);

    @Query(value = "SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, " +
            "p.price AS productPrice, p.description as productDescription, p.short_description as shortDescription, p.id_type as idType, p.quantity as productQuantity " +
            "FROM product p " +
            "where p.id_product = :id", nativeQuery = true)
    IProductForDetail getProductById(@Param("id") Long idProduct);

    @Query(value = "select id_image as idImage, image_path as imagePath " +
            "from image " +
            "where id_product = :id", nativeQuery = true)
    List<IImageDto> getAllImageByProductId(@Param("id") Long idProduct);
}
