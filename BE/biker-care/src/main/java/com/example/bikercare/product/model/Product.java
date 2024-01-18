package com.example.bikercare.product.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idProduct;
    private String nameProduct;
    private Integer quantity;
    @Column(columnDefinition = "LONGTEXT")
    private String shortDescription;
    private Long price;
    @Column(columnDefinition = "LONGTEXT")
    private String description;
    private Boolean flagDeleted;

    @OneToMany(mappedBy = "product")
    @JsonBackReference
    private List<Image> images;
    @ManyToOne
    @JoinColumn(name = "id_type")
    private TypeProduct typeProduct;
}
