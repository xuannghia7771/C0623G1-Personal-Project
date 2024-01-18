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

    @GetMapping("/list-page")
    public ResponseEntity<Page<ProductForHomePageDto>> getListProductWithPagination(@RequestParam(defaultValue = "0",required = false) Integer page,
                                                                                    @RequestParam(defaultValue = "8",required = false) Integer limit,
                                                                                    @RequestParam(defaultValue = "",required = false) String nameProduct,
                                                                                    @RequestParam(defaultValue = "",required = false) String nameType,
                                                                                    @RequestParam(defaultValue = "asc",required = false) String sort,
                                                                                    @RequestParam(defaultValue = "price",required = false) String sortBy){
        Sort sort1 = Sort.by(Sort.Direction.fromString(sort),sortBy);
        Pageable pageable = PageRequest.of(page,limit,sort1);
        Page<ProductForHomePageDto> product = homeService.getListProductWithPagination(nameProduct, nameType, pageable);
        if (product.isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(product,HttpStatus.OK);
    }

    @GetMapping("/product-by-type")
    public ResponseEntity<?> getFruitListHomePage(@RequestParam(name = "type", defaultValue = "", required = false) String type) {
        List<IProductByType> productByType = homeService.getProductByTypeProduct(type);
        if (!productByType.isEmpty()) {
            return new ResponseEntity<>(productByType, HttpStatus.OK);
        }
        return new ResponseEntity<>("Không tìm thấy dữ liệu", HttpStatus.NOT_FOUND);
    }

}
