package com.example.bikercare.product.model;

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
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idImage;
    @Column(columnDefinition = "LONGTEXT")
    private String imagePath;

    @ManyToOne
    @JoinColumn(name = "id_product")
    private Product product;
}
