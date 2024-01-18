package com.example.bikercare.product.controller;

import com.example.bikercare.product.dto.*;
import com.example.bikercare.product.model.Product;
import com.example.bikercare.product.service.IProductService;
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
@RequestMapping("/api/product")
public class ProductController {
    @Autowired
    private IProductService productService;

    @GetMapping("/list")
    public ResponseEntity<Page<IProductDto>> pageProduct(@RequestParam(defaultValue = "0", required = false) Integer page,
                                                         @RequestParam(defaultValue = "", required = false) Integer limit,
                                                         @RequestParam(defaultValue = "", required = false) String searchProduct,
                                                         @RequestParam(defaultValue = "", required = false) String search,
                                                         @RequestParam(defaultValue = "", required = false) String conditional) {
        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "idProduct"));
        Page<IProductDto> products;
        switch (searchProduct) {
            case "nameProduct":
                products = productService.searchByName(pageable, search);
                break;
            case "nameType":
                products = productService.searchByType(pageable, search);
                break;
            case "searchByPrice":
                products = productService.searchByPrice(pageable, search, conditional);
                if (conditional.equals("")) {
                    return new ResponseEntity<>(products, HttpStatus.NO_CONTENT);
                }
                break;
            default:
                products = productService.findAllProduct(pageable, search);
                break;
        }
        if (products.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @GetMapping("/get-list")
    public ResponseEntity<List<IProductWithImage>> productList(@RequestParam(defaultValue = "", required = false) String nameSearch) {
        List<IProductWithImage> products = productService.getAll(nameSearch);
        if (products.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @GetMapping("/search-with-name")
    public ResponseEntity<List<Product>> getProductWithName(@RequestParam(defaultValue = "", required = false) String nameSearch) {
        List<Product> products = productService.getProductWithName(nameSearch);
        if (products.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @GetMapping("/{idProduct}")
    @ResponseBody
    public ResponseEntity<?> findByIdProduct(@PathVariable("idProduct") Long idProduct) {
        return new ResponseEntity<>(productService.findByIdProduct(idProduct), HttpStatus.OK);
    }

    @GetMapping("/detail-product/{id}")
    @ResponseBody
    public ResponseEntity<?> getDetailProduct(@PathVariable Long id) {
        IProductForDetail productForDetail = productService.getProductById(id);
        List<IImageDto> imageDtoList = productService.getAllImageByProductId(id);

        DetailResponse detailResponse = new DetailResponse();
        detailResponse.setProduct(productForDetail);
        detailResponse.setImages(imageDtoList);

        return new ResponseEntity<>(detailResponse, HttpStatus.OK);
    }
}
