package com.example.bikercare.home.service;
import com.example.bikercare.home.dto.IProductByType;
import com.example.bikercare.home.dto.ProductForHomePageDto;
import com.example.bikercare.home.repository.HomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeService implements IHomeService{
    @Autowired
    private HomeRepository homeRepository;
    @Override
    public List<ProductForHomePageDto> findProductForHomePage(String nameProduct, String nameType) {
        return homeRepository.findProductForHomePage(nameProduct, nameType);
    }
}
