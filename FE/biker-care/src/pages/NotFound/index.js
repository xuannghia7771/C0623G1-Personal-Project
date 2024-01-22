import React from 'react';
import './style.css';
import NotFoundImg from '../../assets/images/page-404.png';
import { Button } from '@mui/material';
import { Link } from 'react-router-dom';

const NotFound = () => {
    return (
        <section className='notFound'>
            <div className="container-fluid">
                <div className='box'>
                    <img src={NotFoundImg} alt="NotFoundImg"/>
                    <br /><br />
                    <h1>Không tìm thấy trang</h1>
                    <p>
                        Trang bạn đang truy cập không tồn tại.
                        Vui lòng quay lại trang chủ hoặc liên hệ với chúng tôi để báo cáo sự cố trên
                    </p>
                    <br />


                    <div className='d-flex'>
                        <Button className='btn-g btn-lg m-auto'><Link to={'/home'}>Quay trở về trang chủ</Link></Button>
                    </div>

                </div>
            </div>
        </section>
    )
}


export default NotFound;