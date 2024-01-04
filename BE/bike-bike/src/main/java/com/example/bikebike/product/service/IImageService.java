package com.example.bikebike.product.service;

import com.example.dawhey.product.model.Image;

import java.util.List;

public interface IImageService {
    List<Image> findImageProductByIdProduct(Long idProduct);
    void updateImageProduct(String image, Long idProduct);
    void deleteImg(Long id);
    void insertImageByProductId(List<String> imageDtoList, Long idProduct);
}
