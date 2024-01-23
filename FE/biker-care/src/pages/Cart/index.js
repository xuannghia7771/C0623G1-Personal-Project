import React, {useContext, useState, useEffect} from 'react';
import {Link} from 'react-router-dom';
import './style.css';
import DeleteOutlineOutlinedIcon from '@mui/icons-material/DeleteOutlineOutlined';
import Rating from '@mui/material/Rating';
import {Button} from '@mui/material';
import KeyboardBackspaceIcon from '@mui/icons-material/KeyboardBackspace';
import {infoAppUserByJwtToken} from "../../service/user/UserService";

import {addToCart, getCartFromAPI, minusFromCart, removeProducts} from "../../provider/actions";

import {useNavigate} from 'react-router-dom';
import {toast} from "react-toastify";
import {useDispatch, useSelector} from "react-redux";
import {Modal} from "react-bootstrap";
import MyPalPal from "../../components/MyPalPal";
import emptyCart from "../../assets/images/emptyCart.png";


const Cart = () => {
    const [cartItems, setCartItems] = useState([]);
    const dispatch = useDispatch();
    const navigate = useNavigate();
    const [inputValue, setInputValue] = useState(1);
    const username = infoAppUserByJwtToken();

    const [msgModalShow, setMsgModalShow] = useState(false);
    const [payModalShow, setPayModalShow] = useState(false);
    const [orderMsg, setOrderMsg] = useState("");
    const maxLengthOfMsg = 3000;

    const totalItem = useSelector(state => state.reducers.totalItem)
    const cart = useSelector(state => state.reducers.productArr);
    const address = useSelector(state => state.reducers.address);
    const phoneNumber = useSelector(state => state.reducers.phoneNumber);
    const totalPrice = useSelector(state => state.reducers.totalPrice);

    const handleRemoveFromCart = async (productName, productId) => {
        dispatch(removeProducts(username, productId));
        toast("Xóa sản phẩm " + productName + " ra khỏi giỏ hàng!");
    }

    const handleAddition = (productId) => {
        dispatch(addToCart(username, productId, 1));
    }

    const handleMinus = (productId) => {
        dispatch(minusFromCart(username, productId, 1));
    }

    const isAuthenticated = () => {
        if (!username) {
            navigate("/signIn");
        }
    }

    useEffect(() => {
        isAuthenticated();
        dispatch(getCartFromAPI())
    }, [totalItem])


    function convertVietnameseUnitPrice(e) {
        const floatPrice = parseFloat(e);
        const vietNamesePrice = floatPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});

        return vietNamesePrice;
    }

    console.log()
    console.log(cart);
    return (
        <>
            <div className="breadcrumbWrapper mb-4">
                <div className="container-fluid">
                    <ul className="breadcrumb breadcrumb2 mb-0">
                        <li>
                            <Link to="/home">Trang chủ</Link>
                        </li>
                        <li>
                            <Link to="/listing">Sản phẩm</Link>
                        </li>
                        <li>
                            Giỏ hàng
                        </li>
                    </ul>
                </div>
            </div>

            {
                totalItem > 0 ? (
                    <section className="cartSection mb-5">
                        <div className="container-fluid">
                            <div className="row">
                                <div className="col-md-8">
                                    <div className='d-flex align-items-center w-100'>
                                        <div className="left">
                                            <h1 className="hd mb-0">GIỎ HÀNG</h1>
                                            <p>Có <span className="text-g">{totalItem}</span> sản phẩm trong giỏ hàng
                                            </p>
                                        </div>
                                    </div>

                                    <div className="cartWrapper mt-4">
                                        <div className="table-responsive">
                                            <table className="table">
                                                <thead>
                                                <tr>
                                                    <th>Mặt hàng</th>
                                                    <th>Đơn giá</th>
                                                    <th>Số lượng</th>
                                                    <th>Tổng giá</th>
                                                    <th>Xóa</th>
                                                </tr>
                                                </thead>

                                                <tbody>
                                                {
                                                    cart && (
                                                        cart.map((e, index) => (
                                                            <tr key={index}>
                                                                <td>
                                                                    <div className="d-flex align-items-center">
                                                                        <div className="img">
                                                                            <img
                                                                                src={e.productImage}
                                                                                alt="" className='w-100'/>
                                                                        </div>

                                                                        <div className="info pl-4">
                                                                            <Link to={`/detail/${e.productId}`}>
                                                                                <h4>{e.productName}</h4></Link>
                                                                            {/*<Rating name="half rating-read" value={4.5} precision={0.5}*/}
                                                                            {/*        readOnly/>*/}
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>{convertVietnameseUnitPrice(e.productPrice)}</td>
                                                                <td>
                                                                    <div
                                                                        className="addCartSection pt-4 pb-4 d-flex align-items-center">
                                                                        <button className="btn btn-primary" style={{
                                                                            marginRight: 10 + "px",
                                                                            backgroundColor: "#3bb77e",
                                                                            outline: 'none'
                                                                        }}
                                                                                onClick={() => handleMinus(e.productId)}> -
                                                                        </button>
                                                                        <input type="number" className="quantity-input"
                                                                               value={e.productQuantity}/>
                                                                        <button className="btn btn-primary" style={{
                                                                            marginLeft: 10 + "px",
                                                                            backgroundColor: "#3bb77e",
                                                                            outline: 'none'
                                                                        }}
                                                                                onClick={() => handleAddition(e.productId)}> +
                                                                        </button>
                                                                    </div>
                                                                </td>
                                                                <td><span
                                                                    className="text-g">{convertVietnameseUnitPrice(e.productQuantity * e.productPrice)}</span>
                                                                </td>
                                                                <td>
                                                                    <button className="cursor"
                                                                            onClick={() => handleRemoveFromCart(e.productName, e.productId)}>
                                                                        <DeleteOutlineOutlinedIcon/></button>
                                                                </td>
                                                            </tr>
                                                        ))
                                                    )
                                                }

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div className='d-flex align-items-center'>
                                        <Link to="/listing">
                                            <Button className='btn-g'>
                                                <KeyboardBackspaceIcon/> Tiếp tục mua hàng</Button>
                                        </Link>
                                    </div>
                                </div>

                                {
                                    totalItem > 0 &&
                                    <>
                                        <div className="col-md-4 cartRightBox">
                                            <div className="card p-4 ">
                                                <div className="d-flex align-items-center mb-3">
                                                    <h5 className="mb-0 text-light">Tổng Tiền: </h5>
                                                    <h3 className="ml-auto mb-0 font-weight-bold"><span
                                                        className="text-g">{convertVietnameseUnitPrice(totalPrice)}</span>
                                                    </h3>
                                                </div>

                                                <div className="d-flex align-items-center mb-3">
                                                    <h5 className="mb-0 text-light">Địa chỉ: </h5>
                                                    <h3 className="ml-auto mb-0 font-weight-bold"><span>{address}</span>
                                                    </h3>
                                                </div>

                                                <div className="d-flex align-items-center mb-3">
                                                    <h5 className="mb-0 text-light">SĐT: </h5>
                                                    <h3 className="ml-auto mb-0 font-weight-bold"><span
                                                        className="text-g">{phoneNumber}</span>
                                                    </h3>
                                                </div>

                                                <br/>
                                                <div className="row">
                                                    <div className="col-md-12">
                                                        <div className="t-mb-0 ">
                                                            <MyPalPal totalPrice={totalPrice}></MyPalPal>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </>
                                }
                            </div>
                        </div>
                    </section>
                ) : (
                    <section className="m-auto">
                        <div className="container-fluid text-center">
                            <div>
                                <div className='d-inline-block align-items-center justify-content-center'>
                                    <img src={emptyCart} alt=""/>
                                    <h1>GIỎ HÀNG CỦA BẠN ĐANG TRỐNG</h1>
                                    <Link to="/home">
                                        <Button className='btn-g'>
                                            <KeyboardBackspaceIcon/> QUAY LẠI TRANG CHỦ</Button>
                                    </Link>
                                </div>
                            </div>
                        </div>
                    </section>
                )
            }
        </>
    )
}

export default Cart;