package com.example.bikercare.product.service.impl;
import com.example.bikercare.product.model.Image;
import com.example.bikercare.product.repository.IImageRepository;
import com.example.bikercare.product.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ImageService implements IImageService {
    @Autowired
    private IImageRepository iImageRepository;
    @Override
    public List<Image> findImageProductByIdProduct(Long idProduct) {
        return iImageRepository.findImageByIdProduct(idProduct);
    }

    @Override
    public void deleteImg(Long id) {
        iImageRepository.deleteImageProduct(id);
    }

    @Override
    public void insertImageByProductId(List<String> imageDtoList, Long idProduct) {
        if (imageDtoList != null){
            for (String imagePath: imageDtoList) {
                iImageRepository.insertImageProduct(imagePath,idProduct);
            }
        }
    }
}
