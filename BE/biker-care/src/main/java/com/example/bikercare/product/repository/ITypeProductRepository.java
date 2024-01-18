package com.example.bikercare.product.repository;
import com.example.bikercare.product.model.TypeProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ITypeProductRepository extends JpaRepository<TypeProduct, Long> {
    @Query(value = "SELECT t.id_type, t.name_type FROM biker_care.type_product as t",nativeQuery = true)
    List<TypeProduct> findAllType();
}
