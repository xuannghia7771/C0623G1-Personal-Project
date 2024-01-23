import axios from "axios";
import {infoAppUserByJwtToken} from "../user/UserService";

const BASE_API = "http://localhost:8080/api/cart";

export const getCart = async () => {
    try {
        const username = infoAppUserByJwtToken();
        const res = await axios.get(`${BASE_API}/${username}`);
        return res.data;
    } catch (e) {
        alert("Lỗi fetching: " + e);
    }
}

export const addNewProductToCart = async (username, idProduct, quantityPerProduct) => {
    try {
        const res = await axios.get(BASE_API + `/${username}/${idProduct}/${quantityPerProduct}`);
        return res.status;
    } catch (e) {
        alert("Lỗi fetching: " + e);
    }
}

export const minusProductFromCart = async (username, idProduct, quantityPerProduct) => {
    try {
        const res = await axios.get(BASE_API + `/remove/${username}/${idProduct}/${quantityPerProduct}`);
        return res.status;
    } catch (e) {
        alert("Lỗi 'minus product': " + e);
    }
}

export const removeProductFromCart = async (username, idProduct) => {
    try {
        const res = await axios.delete(BASE_API + `/${username}/${idProduct}`);
        return res.status;
    } catch (e) {
        alert("Lỗi fetching: " + e);
    }
}

export const payCart = async () => {
    try {
        const username = infoAppUserByJwtToken();
        const orderPayDto = {
            username: username,
        }
        return await axios.post(BASE_API + `/pay`, orderPayDto);
    } catch (err) {
        alert("Lỗi không thực hiện được hàm 'payCart': " + err);
    }
}

