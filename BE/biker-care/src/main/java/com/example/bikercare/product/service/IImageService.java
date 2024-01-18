package com.example.bikercare.product.service;

import com.example.bikercare.product.model.Image;

import java.util.List;

public interface IImageService {
    List<Image> findImageProductByIdProduct(Long idProduct);
    void deleteImg(Long id);
    void insertImageByProductId(List<String> imageDtoList, Long idProduct);
}
