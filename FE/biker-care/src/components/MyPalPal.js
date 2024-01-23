import React, {useState} from 'react';
import {PayPalButton} from "react-paypal-button-v2";
import {payCart} from "../service/cart/CartService";
import {toast} from "react-toastify";
import Swal from "sweetalert2";
import {useNavigate} from "react-router-dom";
import {useDispatch, useSelector} from "react-redux";
import {payCarts} from "../provider/actions";

const MyPalPal = (props) => {
    const [paidFor, setPaidFor] = useState(false);
    const dispatch = useDispatch();
    const [isRender, setIsRender] = useState(false);

    const handleApprove = async () => {
        try {
            const res = await payCart();
            if (res.status === 200) {
                toast("Thanh toán thành công");
                dispatch(payCarts());
                setIsRender(!isRender)
                await Swal.fire({
                    icon: 'success',
                    title: 'Thanh toán thành công!',
                    text: 'Cảm ơn bạn đã mua sắm!',
                    confirmButtonText: 'OK',
                    showCancelButton: false,
                    showCloseButton: false,
                });
            } else {
                setPaidFor(true);
            }
        } catch (e) {
            console.log("lỗi paypal")
        }
    };

    const exchangeMoneyToString = () => {

        // Sử dụng giá trị total trong tính toán
        let result = props.totalPrice/ 20000;
        console.log(result);
        return result ;
    }
    const onSuccess = (details, data) => {
        console.log("Transaction completed by " + details.payer.name.given_name);
        handleApprove()
        // Thực hiện các hành động sau khi thanh toán thành công ở đây
    };

    const onCancel = (data) => {
        console.log("Transaction cancelled");
        // Thực hiện các hành động sau khi thanh toán bị hủy ở đây
    };

    const onError = (err) => {
        console.error("Error during PayPal transaction", err);
        // Xử lý lỗi ở đây
    };

    return (
        <PayPalButton
            amount={exchangeMoneyToString()}// Số tiền thanh toán
            onSuccess={onSuccess}
            onCancel={onCancel}
            onError={onError}
        />
    );
};

export default MyPalPal;