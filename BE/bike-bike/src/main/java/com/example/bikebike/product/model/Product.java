package com.example.bikebike.product.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idProduct;
    private String nameProduct;
    private Integer quantity;
    private Float price;
    @Column(columnDefinition = "LONGTEXT")
    private String description;
    private Boolean flagNew;
    private Boolean flagDeleted;

    @OneToMany(mappedBy = "com/example/bikebike/product")
    @JsonBackReference
    private List<Image> images;
    @ManyToOne
    @JoinColumn(name = "id_type")
    private TypeProduct typeProduct;

    public Product() {
    }

    public Product(Long idProduct, String nameProduct, Integer quantity, Float price, String description, Boolean flagNew, Boolean flagDeleted, List<Image> images, TypeProduct typeProduct) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.flagNew = flagNew;
        this.flagDeleted = flagDeleted;
        this.images = images;
        this.typeProduct = typeProduct;
    }

    public Long getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(Long idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getFlagNew() {
        return flagNew;
    }

    public void setFlagNew(Boolean flagNew) {
        this.flagNew = flagNew;
    }

    public Boolean getFlagDeleted() {
        return flagDeleted;
    }

    public void setFlagDeleted(Boolean flagDeleted) {
        this.flagDeleted = flagDeleted;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public TypeProduct getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(TypeProduct typeProduct) {
        this.typeProduct = typeProduct;
    }
}
