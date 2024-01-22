import React, { useContext, useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import './style.css';
import DeleteOutlineOutlinedIcon from '@mui/icons-material/DeleteOutlineOutlined';
import Rating from '@mui/material/Rating';
import { Button } from '@mui/material';
import KeyboardBackspaceIcon from '@mui/icons-material/KeyboardBackspace';
import axios from 'axios';

import { useNavigate } from 'react-router-dom';
import KeyboardArrowUpIcon from "@mui/icons-material/KeyboardArrowUp";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";


const Cart = () => {
    const [cartItems, setCartItems] = useState([]);
    const history = useNavigate();
    const [inputValue, setInputValue] = useState(1);


    const plus = () => {
        setInputValue(inputValue + 1);
    }

    const minus = () => {
        if (inputValue !== 1) {
            setInputValue(inputValue - 1);
        }
    }
    return (
        <>
            <div className="breadcrumbWrapper mb-4">
                <div className="container-fluid">
                    <ul className="breadcrumb breadcrumb2 mb-0">
                        <li>
                            <Link to="/product/35">Home</Link>
                        </li>
                        <li>
                            Shop
                        </li>
                        <li>
                            Cart
                        </li>
                    </ul>
                </div>
            </div>

            <section className="cartSection mb-5">
                <div className="container-fluid">
                    <div className="row">
                        <div className="col-md-8">
                            <div className='d-flex align-items-center w-100'>
                                <div className="left">
                                    <h1 className="hd mb-0">Your Card</h1>
                                    <p>There are <span className="text-g">3</span> products in your cart</p>
                                </div>

                                <span className="ml-auto clearCart d-flex align-items-center"><DeleteOutlineOutlinedIcon/> Clear Cart</span>

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
                                            <tr>
                                                <td>
                                                    <div className="d-flex align-items-center">
                                                        <div className="img">
                                                            <img src="https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/ladakh-3l-d-dry-jacket-army-green-black.png?alt=media&token=d0618ec3-579c-4023-b25c-406c1a20ee06" alt="" className='w-100'/>
                                                        </div>

                                                        <div className="info pl-4">
                                                            <Link to="/detail/id"><h4>Field Roast Chao Cheese Creamy Original</h4></Link>
                                                            <Rating name="half rating-read" value={4.5} precision={0.5} readOnly/>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>$2.51</td>
                                                <td>
                                                    <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                                                        <button className="btn btn-primary" style={{marginRight: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> -</button>
                                                        <input type="number" className="quantity-input"/>
                                                        <button className="btn btn-primary" style={{marginLeft: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> +</button>
                                                    </div>
                                                </td>
                                                <td><span className="text-g">$2.51</span></td>
                                                <td><span className="cursor"><DeleteOutlineOutlinedIcon/></span></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div className="d-flex align-items-center">
                                                        <div className="img">
                                                            <img src="https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/ladakh-3l-d-dry-jacket-army-green-black.png?alt=media&token=d0618ec3-579c-4023-b25c-406c1a20ee06" alt="" className='w-100'/>
                                                        </div>

                                                        <div className="info pl-4">
                                                            <Link to="/detail/id"><h4>Field Roast Chao Cheese Creamy Original</h4></Link>
                                                            <Rating name="half rating-read" value={4.5} precision={0.5} readOnly/>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>$2.51</td>
                                                <td>
                                                    <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                                                        <button className="btn btn-primary" style={{marginRight: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> -</button>
                                                        <input type="number" className="quantity-input"/>
                                                        <button className="btn btn-primary" style={{marginLeft: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> +</button>
                                                    </div>
                                                </td>
                                                <td><span className="text-g">$2.51</span></td>
                                                <td><span className="cursor"><DeleteOutlineOutlinedIcon/></span></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div className="d-flex align-items-center">
                                                        <div className="img">
                                                            <img src="https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/ladakh-3l-d-dry-jacket-army-green-black.png?alt=media&token=d0618ec3-579c-4023-b25c-406c1a20ee06" alt="" className='w-100'/>
                                                        </div>

                                                        <div className="info pl-4">
                                                            <Link to="/detail/id"><h4>Field Roast Chao Cheese Creamy Original</h4></Link>
                                                            <Rating name="half rating-read" value={4.5} precision={0.5} readOnly/>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>$2.51</td>
                                                <td>
                                                    <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                                                        <button className="btn btn-primary" style={{marginRight: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> -</button>
                                                        <input type="number" className="quantity-input"/>
                                                        <button className="btn btn-primary" style={{marginLeft: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> +</button>
                                                    </div>
                                                </td>
                                                <td><span className="text-g">$2.51</span></td>
                                                <td><span className="cursor"><DeleteOutlineOutlinedIcon/></span></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div className="d-flex align-items-center">
                                                        <div className="img">
                                                            <img src="https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/ladakh-3l-d-dry-jacket-army-green-black.png?alt=media&token=d0618ec3-579c-4023-b25c-406c1a20ee06" alt="" className='w-100'/>
                                                        </div>

                                                        <div className="info pl-4">
                                                            <Link to="/detail/id"><h4>Field Roast Chao Cheese Creamy Original</h4></Link>
                                                            <Rating name="half rating-read" value={4.5} precision={0.5} readOnly/>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>$2.51</td>
                                                <td>
                                                    <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                                                        <button className="btn btn-primary" style={{marginRight: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> -</button>
                                                        <input type="number" className="quantity-input"/>
                                                        <button className="btn btn-primary" style={{marginLeft: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> +</button>
                                                    </div>
                                                </td>
                                                <td><span className="text-g">$2.51</span></td>
                                                <td><span className="cursor"><DeleteOutlineOutlinedIcon/></span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div className='d-flex align-items-center'>
                                <Link to="/listing">
                                    <Button className='btn-g'>
                                        <KeyboardBackspaceIcon /> Tiếp tục mua hàng</Button>
                                </Link>
                            </div>
                        </div>

                        <div className="col-md-4 cartRightBox">
                            <div className="card p-4 ">
                                <div className="d-flex align-items-center mb-3">
                                    <h5 className="mb-0 text-light">Subtotal</h5>
                                    <h3 className="ml-auto mb-0 font-weight-bold"><span className="text-g">$12.31</span></h3>
                                </div>

                                <div className="d-flex align-items-center mb-3">
                                    <h5 className="mb-0 text-light">Shipping</h5>
                                    <h3 className="ml-auto mb-0 font-weight-bold"><span>Free</span></h3>
                                </div>

                                <div className="d-flex align-items-center mb-3">
                                    <h5 className="mb-0 text-light">Subtotal</h5>
                                    <h3 className="ml-auto mb-0 font-weight-bold"><span className="text-g">$12.31</span></h3>
                                </div>

                                <div className="d-flex align-items-center mb-3">
                                    <h5 className="mb-0 text-light">Subtotal</h5>
                                    <h3 className="ml-auto mb-0 font-weight-bold"><span className="text-g">$12.31</span></h3>
                                </div>

                                <br/>
                                <Button className='btn-g btn-lg'>Tiến hành thanh toán</Button>

                            </div>
                        </div>
                    </div>


                </div>
            </section>
        </>
    )
}

export default Cart;