package com.example.bikercare.order.service;

import com.example.bikercare.order.common.OrderCodeGenerator;
import com.example.bikercare.order.dto.CartDto;
import com.example.bikercare.order.dto.OrderPayDto;
import com.example.bikercare.order.model.CartDetail;
import com.example.bikercare.order.model.Orders;
import com.example.bikercare.order.model.OrdersDetail;
import com.example.bikercare.order.repository.ICartRepository;
import com.example.bikercare.order.repository.IOrderDetailRepository;
import com.example.bikercare.order.repository.IOrderRepository;
import com.example.bikercare.product.model.Product;
import com.example.bikercare.product.service.IProductService;
import com.example.bikercare.user.model.AppUser;
import com.example.bikercare.user.repository.IAppUserRepository;
import org.hibernate.criterion.Order;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Date;
import java.util.List;
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
    @Autowired
    private IOrderRepository orderRepository;
    @Autowired
    private IOrderDetailRepository orderDetailRepository;

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
                    Integer preProductQuantity = existedProduct.get().getQuantity();
                    cart.get().setQuantityPerProduct(quantityPerProduct + prevQuantity);
                    existedProduct.get().setQuantity(preProductQuantity - (quantityPerProduct));
                    this.cartRepository.save(cart.get());
                    return true;
                }
            } else if (isDataValid && !existedCart.isPresent()) {
                CartDetail newCart = new CartDetail(quantityPerProduct, existedUser.get(), existedProduct.get());
                Integer preProductQuantity = existedProduct.get().getQuantity();
                existedProduct.get().setQuantity(preProductQuantity - (quantityPerProduct));
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
    public boolean adjustmentProductInCart(String actionCase, String username, Long idProduct, Integer quantityPerProduct) {
        switch (actionCase) {
            case ADD_TO_CART:
                return this.addToCart(username, idProduct, (quantityPerProduct));
            case REMOVE_FROM_CART:
                return this.addToCart(username, idProduct, (-quantityPerProduct));
            default:
                return false;
        }
    }

    @Override
    public boolean removeFromCart(String username, Long idProduct) {
        try {
            Optional<CartDetail> existedCart = this.cartRepository.findExistedCart(username, idProduct);

            if (existedCart.isPresent()) {
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

    @Override
    public boolean cartPay(OrderPayDto orderPayDto) {
        try {
            String username = orderPayDto.getUsername();
            String orderCode = this.orderCodeGenerating();
            Optional<AppUser> existedUser = this.appUserRepository.findAppUserByUsername(username);
//            LocalDateTime now = LocalDateTime.now();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date dateNow = new Date();
            String strNow = sdf.format(dateNow);

            if (existedUser.isPresent()) {
                Orders newOrder = new Orders(orderCode, strNow, existedUser.get());
                Collection<CartDto> existedUserCart = this.cartRepository.getCartByUsername(username);

                if (existedUserCart.size() > 0) {
                    this.orderRepository.save(newOrder);
                    for (CartDto cartDto : existedUserCart) {
                        Optional<Product> curProduct = this.productService.findById(cartDto.getProductId());
                        if (curProduct.isPresent()) {
                            Integer newQty = Integer.parseInt(cartDto.getProductQuantity());
                            Long newTotalCost = (Long.parseLong(cartDto.getProductQuantity())
                                    * curProduct.get().getPrice());

                            OrdersDetail newOrderDetail = new OrdersDetail(newQty, newTotalCost, newOrder, curProduct.get());
                            this.orderDetailRepository.save(newOrderDetail);

                        } else {
                            return false;
                        }
                    }
                    this.cartRepository.removeByUser(username);
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (Exception e) {
            logger.warn("Error while get paying cart: {}", e.getMessage());
        }
        return false;
    }

    @Override
    public String orderCodeGenerating() {
        String orderCode = OrderCodeGenerator.orderCodeGenerate();
        String existedCode = this.orderRepository.isCodeExisted(orderCode);
        while (existedCode != null) {
            orderCode = OrderCodeGenerator.orderCodeGenerate();
            existedCode = this.orderRepository.isCodeExisted(orderCode);
        }
        return orderCode;
    }

}
