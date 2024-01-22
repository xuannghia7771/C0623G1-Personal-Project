import * as cartService from "../service/cart/CartService";
import {getAccessToken} from "../service/user/UserService";

const getCartFromAPI = () => async (dispatch) => {
    try {
        const flag = getAccessToken() != null;
        if (flag) {
            const data = await cartService.getCart();
            dispatch({
                type: GET_CART_FROM_API,
                payload: data,
            });
        } else {
            dispatch({
                type: GET_CART_FROM_API,
                payload: [],
            })
        }
    } catch (err) {
        alert("Lỗi "+ err);
    }
}

const addToCart = (username, productId, productQuantity) => async (dispatch) => {
    try {
        await cartService.addNewProductToCart(username,
            productId, productQuantity);
        dispatch({
            type: ADD_ITEMS,
            payload: username, productId, productQuantity,
        })
    } catch (err) {
        alert("Lỗi "+ err);
    }
};

const minusFromCart = (username, productId, productQuantity) => async (dispatch) => {
    const curCart = await cartService.getCart();
    let curQty = 0;
    curCart.map(item => {
        if (item.productId === productId) {
            curQty = item.productQuantity;
        }
    });

    if (curQty > 1) {
        try {
            await cartService.minusProductFromCart(username,
                productId, productQuantity);
            const newCart = await cartService.getCart();
            dispatch({
                type: MINUS_ITEMS,
                payload: newCart,
            })
        } catch (err) {
            alert("Lỗi "+ err);
        }
    } else {
        const oldCart = await cartService.getCart();
        dispatch({
            type: MINUS_ITEMS,
            payload: oldCart,
        });
    }
};

const removeProducts = (username, productId) => async (dispatch) => {
    try {
        await cartService.removeProductFromCart(username, productId);
        dispatch({
            type: REMOVE_ITEMS,
        })
    } catch (err) {
        alert("Lỗi "+ err);
    }
};

const payCarts = () => {
    return ({
        type: PAY_CART,
    })
}

const GET_CART_FROM_API = "GET_CART_FROM_API";
const ADD_ITEMS = "ADD_ITEMS";
const MINUS_ITEMS = "MINUS_ITEMS";
const REMOVE_ITEMS = "REMOVE_ITEMS";
const REMOVE_CART = "REMOVE_CART";
const PAY_CART = "PAY_CART";

export {getCartFromAPI, addToCart, removeProducts, minusFromCart, payCarts}

export {GET_CART_FROM_API, ADD_ITEMS, MINUS_ITEMS, REMOVE_ITEMS, REMOVE_CART, PAY_CART}