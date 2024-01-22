package com.example.bikercare.home.controller;
import com.example.bikercare.home.dto.IProductByType;
import com.example.bikercare.home.dto.ProductForHomePageDto;
import com.example.bikercare.home.service.IHomeService;
import com.example.bikercare.product.model.TypeProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/home")
public class HomePageController {
    @Autowired
    private IHomeService homeService;
    @GetMapping
    public ResponseEntity<List<ProductForHomePageDto>> findProductHomePage(@RequestParam(defaultValue = "",required = false) String nameProduct,
                                                                           @RequestParam(defaultValue = "",required = false) String nameType){
    List<ProductForHomePageDto> pageDtoList = homeService.findProductForHomePage(nameProduct, nameType);
        if (pageDtoList.isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(pageDtoList,HttpStatus.OK);
    }
}
