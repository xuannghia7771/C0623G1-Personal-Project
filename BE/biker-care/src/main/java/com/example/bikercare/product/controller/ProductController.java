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

    @GetMapping("/get-list")
    public ResponseEntity<List<IProductWithImage>> productList(@RequestParam(defaultValue = "", required = false) String nameSearch) {
        List<IProductWithImage> products = productService.getAllProductForHomePage(nameSearch);
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

    @GetMapping("/listing")
    @ResponseBody
    public ResponseEntity<?> getProductForListingPage(@RequestParam(defaultValue = "0",required = false) Integer page,
                                                      @RequestParam(defaultValue = "5",required = false) Integer limit,
                                                      @RequestParam(defaultValue = "",required = false) String nameProduct,
                                                      @RequestParam(defaultValue = "",required = false) String nameType,
                                                      @RequestParam(defaultValue = "desc",required = false) String sort,
                                                      @RequestParam(defaultValue = "idProduct",required = false) String sortBy) {

        Sort sortProduct = Sort.by(Sort.Direction.fromString(sort),sortBy);
        Pageable pageable = PageRequest.of(page,limit,sortProduct);
        Page<ProductForListingPageDto> product = productService.getAllProductWithFilter(nameProduct, nameType, pageable);
        if (product == null){
            return new ResponseEntity<>("Không tìm thấy sản phẩm yêu cầu",HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(product,HttpStatus.OK);
    }

    @GetMapping("/product-by-type/{idType}")
    public ResponseEntity<List<IProductWithImage>> getProductByIdType(@PathVariable Long idType) {
        List<IProductWithImage> products = productService.getProductByIdType(idType);
        if (products == null) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(products, HttpStatus.OK);
    }
}
