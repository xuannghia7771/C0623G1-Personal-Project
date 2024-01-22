package com.example.bikercare.order.model;

import com.example.bikercare.product.model.Product;
import com.example.bikercare.user.model.AppUser;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CartDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Integer quantityPerProduct;
    @ManyToOne
    @JoinColumn(name = "app_user_id",referencedColumnName = "id")
    private AppUser appUser;
    @ManyToOne
    @JoinColumn(name = "id_product", referencedColumnName = "idProduct")
    private Product product;

    public CartDetail(Integer quantityPerProduct, AppUser appUser, Product product) {
        this.quantityPerProduct = quantityPerProduct;
        this.appUser = appUser;
        this.product = product;
    }
}
