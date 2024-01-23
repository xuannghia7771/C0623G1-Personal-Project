import React, {useEffect, useState} from 'react';
import {Link, useParams} from "react-router-dom";
import * as orderService from "../../service/order/OrderService";
import {infoAppUserByJwtToken} from "../../service/user/UserService";


const OrderDetailHistory = () => {
    const { idOrder } = useParams();
    const [orderDetailList, setOrderDetailList] = useState([]);

    useEffect(() => {
        getOrderDetails();
    }, []);

    const getOrderDetails = async () => {
        const result = await orderService.getOrderDetailByOrderId(idOrder);
        setOrderDetailList(result);
    }

    console.log(orderDetailList)

    return (
        <>
            <div className="breadcrumbWrapper mb-4">
                <div className="container-fluid">
                    <ul className="breadcrumb breadcrumb2 mb-0">
                        <li>
                            <Link to="/home">Trang chủ</Link>
                        </li>
                        <li>
                            <Link to="/order">Đơn hàng</Link>
                        </li>
                        <li>
                            Chi tiết đơn hàng
                        </li>
                    </ul>
                </div>
            </div>

            <section className="cartSection mb-5">
                <div className="container-fluid">
                    <div className="row">
                        <div className="col-md-12">
                            <div className='d-flex align-items-center w-100'>
                                <div className="left">
                                    <h1 className="hd mb-0">DANH SÁCH MẶT HÀNG ĐÃ MUA</h1>
                                    <p>Có <span className="text-g">{orderDetailList.length}</span> sản phẩm đã mua
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
                                            <th>Tổng tiền / 1 sản phẩm</th>
                                            <th>Mã hóa đơn</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        {
                                            orderDetailList && (
                                                orderDetailList.map((e, index) => (
                                                    <tr key={index}>
                                                        <td>
                                                            <div className="d-flex align-items-center">
                                                                <div className="img">
                                                                    <img
                                                                        src={e.image}
                                                                        alt="" className='w-100'/>
                                                                </div>

                                                                <div className="info pl-4">
                                                                    <Link to={`/detail/${e.idProduct}`}>
                                                                        <h4>{e.productName}</h4></Link>
                                                                    {/*<Rating name="half rating-read" value={4.5} precision={0.5}*/}
                                                                    {/*        readOnly/>*/}
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>{e.productPrice}</td>
                                                        <td>
                                                            {e.quantity}
                                                        </td>
                                                        <td><span
                                                            className="text-g">{e.totalPrice}</span>
                                                        </td>
                                                        <td>
                                                            {e.orderCode}
                                                        </td>
                                                    </tr>
                                                ))
                                            )
                                        }
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </>
    );
};

export default OrderDetailHistory;