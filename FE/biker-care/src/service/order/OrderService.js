import axios from "axios";

export const getOrderByUserName = async (username) => {
    try {
        const res = await axios.get(`http://localhost:8080/api/order/${username}`);
        return res.data;
    } catch (e) {
        alert("Không lấy được lịch sử mua hàng: " + e);
    }
}

export const getOrderDetailByOrderId = async (orderId) => {
    try {
        const res = await axios.get(`http://localhost:8080/api/order/detail/${orderId}`);
        return res.data;
    } catch (e) {
        alert("Không lấy được chi tiết lịch sử mua hàng: " + e);
    }
}