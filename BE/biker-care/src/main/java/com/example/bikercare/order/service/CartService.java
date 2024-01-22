package com.example.bikercare.order.service;

import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.model.CartDetail;
import com.example.bikercare.order.repository.ICartRepository;
import com.example.bikercare.product.model.Product;
import com.example.bikercare.product.service.IProductService;
import com.example.bikercare.user.model.AppUser;
import com.example.bikercare.user.repository.IAppUserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.Optional;

import static com.example.bikercare.order.common.Enum.ADD_TO_CART;
import static com.example.bikercare.order.common.Enum.REMOVE_FROM_CART;

@Service
public class CartService implements ICartService {
    @Autowired
    private ICartRepository cartRepository;
    @Autowired
    private IAppUserRepository appUserRepository;
    @Autowired
    private IProductService productService;

    private static final Logger logger = LoggerFactory.getLogger(CartService.class);

    @Override
    public Collection<CartDto> getCartByUsername(String username) {
        try {
            return this.cartRepository.getCartByUsername(username);
        } catch (IllegalArgumentException e) {
            logger.warn("Error while get cart by username: {}", e.getMessage());
        }
        return null;
    }

    @Override
    @Transactional
    public boolean addToCart(String username, Long idProduct, Integer quantityPerProduct) {
        try {
            Optional<AppUser> existedUser = this.appUserRepository.findAppUserByUsername(username);
            Optional<Product> existedProduct = this.productService.findById(idProduct);
            Optional<CartDetail> existedCart = this.cartRepository.findExistedCart(username, idProduct);
            boolean isDataValid = existedUser.isPresent() && existedProduct.isPresent();

            if (isDataValid && existedCart.isPresent()) {
                Optional<CartDetail> cart = this.cartRepository.findExistedCart(username, idProduct);
                if (cart.isPresent()) {
                    Integer prevQuantity = cart.get().getQuantityPerProduct();
                    cart.get().setQuantityPerProduct(quantityPerProduct + prevQuantity);
                    this.cartRepository.save(cart.get());
                    return true;
                }
            } else if (isDataValid && !existedCart.isPresent()) {
                CartDetail newCart = new CartDetail(quantityPerProduct, existedUser.get(), existedProduct.get());
                this.cartRepository.save(newCart);
                return true;
            } else {
                return false;
            }

        } catch (IllegalArgumentException e) {
            logger.warn("IllegalArgumentException: {}", e.getMessage());
        } catch (TransactionException e) {
            logger.warn("TransactionException: {}", e.getMessage());
        } catch (Exception e) {
            logger.warn("Error while add new cart: {}", e.getMessage());
        }
        return false;
    }

    @Override
    @Transactional
    public boolean adjustmentProductInCart(String username, String actionCase, Long idProduct, Integer quantityPerProduct) {
        switch (actionCase) {
            case ADD_TO_CART:
                return this.addToCart(username, idProduct, quantityPerProduct);
            case REMOVE_FROM_CART:
                return this.addToCart(username, idProduct, -quantityPerProduct);
            default:
                return false;
        }
    }

    @Override
    public boolean removeFromCart(String username, Long idProduct) {
        try {
            Optional<CartDetail> existedCart = this.cartRepository.findExistedCart(username, idProduct);

            if (existedCart.isPresent()){
                this.cartRepository.removeByUserAndProduct(username, idProduct);
                return true;
            }

        } catch (IllegalArgumentException e) {
            logger.warn("IllegalArgumentException: {}", e.getMessage());
        } catch (TransactionException e) {
            logger.warn("TransactionException: {}", e.getMessage());
        } catch (Exception e) {
            logger.warn("Error while remove product from cart: {}", e.getMessage());
        }
        return false;
    }

}
