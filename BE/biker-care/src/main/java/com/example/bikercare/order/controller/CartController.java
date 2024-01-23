package com.example.bikercare.order.controller;

import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.dto.OrderPayDto;
import com.example.bikercare.order.service.ICartService;
import com.example.bikercare.user.model.AppUser;
import com.example.bikercare.user.service.IAppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Optional;

import static com.example.bikercare.order.common.Enum.ADD_TO_CART;
import static com.example.bikercare.order.common.Enum.REMOVE_FROM_CART;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/cart")
public class CartController {
    @Autowired
    private ICartService cartService;

    @Autowired
    private IAppUserService appUserService;

    @GetMapping("/{username}")
    public ResponseEntity<?> getCartByUsername(@PathVariable(name = "username") String username) {

        Optional<AppUser> user = this.appUserService.findUserByUsername(username);
        if (!user.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        Collection<CartDto> userCart = this.cartService.getCartByUsername(username);

        if (userCart.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return ResponseEntity.ok(userCart);
    }

    @GetMapping("/{username}/{idProduct}/{quantityPerProduct}")
    public ResponseEntity<?> addNewProductToCart(
            @PathVariable(name = "username") String username,
            @PathVariable(name = "idProduct") Long idProduct,
            @PathVariable(name = "quantityPerProduct") Integer quantityPerProduct) {

        boolean flag = this.cartService.addToCart(username, idProduct, quantityPerProduct);

        if (flag) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/add/{username}/{idProduct}/{quantityPerProduct}")
    public ResponseEntity<?> addProductsToCart(
            @PathVariable(name = "username") String username,
            @PathVariable(name = "idProduct") Long idProduct,
            @PathVariable(name = "quantityPerProduct") Integer quantityPerProduct) {

        boolean flag = this.cartService.adjustmentProductInCart(ADD_TO_CART, username, idProduct, quantityPerProduct);
        if (flag) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping("/remove/{username}/{idProduct}/{quantityPerProduct}")
    public ResponseEntity<?> removeProductsInCart(
            @PathVariable(name = "username") String username,
            @PathVariable(name = "idProduct") Long idProduct,
            @PathVariable(name = "quantityPerProduct") Integer quantityPerProduct) {

        boolean flag = this.cartService.adjustmentProductInCart(REMOVE_FROM_CART, username, idProduct, quantityPerProduct);
        if (flag) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/{username}/{idProduct}")
    public ResponseEntity<?> removeProduct(@PathVariable(name = "username") String username,
                                           @PathVariable(name = "idProduct") Long idProduct) {

        boolean flag = this.cartService.removeFromCart(username, idProduct);

        if (flag) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping("/pay")
    public ResponseEntity<?> cartPay(
            @RequestBody OrderPayDto orderPayDto) {

        boolean flag = this.cartService.cartPay(orderPayDto);

        if (flag) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
