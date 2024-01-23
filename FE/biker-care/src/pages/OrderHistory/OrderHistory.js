import React, {useEffect, useState} from 'react';
import {Link, useNavigate} from "react-router-dom";
import {Table} from "react-bootstrap";
import * as orderService from "../../service/order/OrderService";
import {infoAppUserByJwtToken} from "../../service/user/UserService";

const OrderHistory = () => {
    const username = infoAppUserByJwtToken();
    const [orderList, setOrderList] = useState([]);

    useEffect(() => {
        getOrderList();
    }, []);

    const getOrderList = async () => {
        const result = await orderService.getOrderByUserName(username);
        setOrderList(result);
    }

    // console.log(orderList)
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
                            Lịch sử mua hàng
                        </li>
                    </ul>
                </div>
            </div>
            {/* Single Page Header End */}
            {/* Fruits Shop Start*/}
            <div className="container-fluid fruite py-5">
                <div className="container py-5">
                    <h1 className="mb-4 text-center text-warning">Lịch sử mua hàng</h1>
                    <div className="row g-4">
                        <div className="col-lg-12">
                            <div className="container">
                                <Table responsive="sm">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Mã hóa đơn</th>
                                        <th>Ngày mua</th>
                                        <th>Chi tiết đơn hàng</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {
                                        orderList && (
                                            orderList.map((e,index) => (
                                                <tr key={index}>
                                                    <td>{index + 1}</td>
                                                    <td>{e.orderCode}</td>
                                                    <td>{e.dateTime}</td>
                                                    <td><Link to={`/order-detail/${e.id}`}><button className="btn btn-success">Xem</button></Link></td>
                                                </tr>
                                            ))
                                        )
                                    }
                                        {/*<td colSpan={6}><h2 className="text-warning text-center">Chưa có lịch sử mua*/}
                                        {/*    hàng</h2></td>*/}
                                    </tbody>
                                </Table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
};

export default OrderHistory;