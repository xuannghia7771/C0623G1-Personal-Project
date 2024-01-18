import React from 'react';
import './footer.css';

import Icon1 from '../../assets/images/icon-1.svg';
import Icon2 from '../../assets/images/icon-2.svg'
import Icon3 from '../../assets/images/icon-3.svg'
import Icon4 from '../../assets/images/icon-4.svg'
import Icon5 from '../../assets/images/icon-5.svg'
import Logo from '../../assets/images/logo-bikercare.png';
import { Link } from 'react-router-dom';
import LocationOnOutlinedIcon from '@mui/icons-material/LocationOnOutlined';
import HeadphonesOutlinedIcon from '@mui/icons-material/HeadphonesOutlined';
import EmailOutlinedIcon from '@mui/icons-material/EmailOutlined';
import WatchLaterOutlinedIcon from '@mui/icons-material/WatchLaterOutlined';
import paymentImage from '../../assets/images/payment-method.png';

import appStore from '../../assets/images/app-store.jpg';
import googlePlay from '../../assets/images/google-play.jpg';
import FacebookOutlinedIcon from '@mui/icons-material/FacebookOutlined';
import TwitterIcon from '@mui/icons-material/Twitter';
import InstagramIcon from '@mui/icons-material/Instagram';
import YouTubeIcon from '@mui/icons-material/YouTube';
import NewsletterImg from '../../assets/images/newsletter.png';

const Footer = () => {
    return (
        <>

            <div className='footerWrapper'>
                <div className='footerBoxes'>
                    <div className='container-fluid'>
                        <div className='row'>
                            <div className='col'>
                                <div className='box d-flex align-items-center w-100'>
                                    <span><img src={Icon1} alt="Icon1"/></span>
                                    <div className='info'>
                                        <h4>Giá tốt nhất</h4>
                                    </div>
                                </div>
                            </div>

                            <div className='col'>
                                <div className='box d-flex align-items-center w-100'>
                                    <span><img src={Icon2} alt="Icon2"/></span>
                                    <div className='info'>
                                        <h4>Miễn phí ship</h4>
                                    </div>
                                </div>
                            </div>

                            <div className='col'>
                                <div className='box d-flex align-items-center w-100'>
                                    <span><img src={Icon3} alt="Icon3"/></span>
                                    <div className='info'>
                                        <h4>Ưu đãi tốt</h4>
                                    </div>
                                </div>
                            </div>


                            <div className='col'>
                                <div className='box d-flex align-items-center w-100'>
                                    <span><img src={Icon4} alt="Icon4"/></span>
                                    <div className='info'>
                                        <h4>Đa dạng sản phẩm</h4>
                                    </div>
                                </div>
                            </div>


                            <div className='col'>
                                <div className='box d-flex align-items-center w-100'>
                                    <span><img src={Icon5} alt="Icon5"/></span>
                                    <div className='info'>
                                        <h4>Dễ Dàng Đổi Trả</h4>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <footer>
                    <div className='container-fluid'>
                        <div className='row'>
                            <div className='col-md-3 part1'>
                                <Link to='/'><img src={Logo} alt="Logo" style={{width: 300 + 'px'}}/></Link>
                                <br /><br />
                                <p>Awesome grocery store website template</p>
                                <br />

                                <p><LocationOnOutlinedIcon /> <strong>Địa chỉ</strong>: 280 Trần Hưng Đạo, Đà Nẵng</p>
                                <p><HeadphonesOutlinedIcon /> <strong>SĐT:</strong> 0969980926 </p>
                                <p><EmailOutlinedIcon /> <strong>Email:</strong> nghiaphan33dn@gmail.com</p>
                                <p><WatchLaterOutlinedIcon /> <strong>Giờ làm việc:</strong> 8:00 - 17:30, T.Hai - Chủ nhật</p>

                            </div>


                            <div className='col-md-6 part2'>
                                <div className='row'>
                                    <div className='col'>
                                        <h3>Công Ty</h3>
                                        <ul className="footer-list mb-sm-5 mb-md-0">
                                            <li><Link to="#">Về chúng tôi</Link></li>
                                            <li><Link to="#">Thông tin giao hàng</Link></li>
                                            <li><Link to="#">Chính sách cá nhân</Link></li>
                                            <li><Link to="#">Điều khoản &amp; Điều kiện</Link></li>
                                            <li><Link to="#">Liên hệ với chúng tôi</Link></li>
                                            <li><Link to="#">Trung tâm hỗ trợ</Link></li>
                                            <li><Link to="#">Việc làm</Link></li>
                                        </ul>
                                    </div>

                                    <div className='col'>
                                        <h3>Tài khoản</h3>
                                        <ul className="footer-list mb-sm-5 mb-md-0">
                                            <li><Link to="#">Thông tin tài khoản</Link></li>
                                            <li><Link to="#">Chỉnh sửa</Link></li>
                                            <li><Link to="#">Chính sách bảo mật</Link></li>
                                            <li><Link to="#">Đơn hàng</Link></li>
                                            <li><Link to="#">Đổi mật khẩu</Link></li>
                                        </ul>
                                    </div>


                                    <div className='col'>
                                        <h3>Hợp tác</h3>
                                        <ul className="footer-list mb-sm-5 mb-md-0">
                                            <li><Link to="#">Trở thành đại lý</Link></li>
                                            <li><Link to="#">Chương trình hội viên</Link></li>
                                            <li><Link to="#">Đối tác kinh doanh</Link></li>
                                            <li><Link to="#">Quảng bá</Link></li>
                                        </ul>
                                    </div>


                                    <div className='col'>
                                        <h3>Danh mục</h3>
                                        <ul className="footer-list mb-sm-5 mb-md-0">
                                            <li><Link to="#">Mũ bảo hộ</Link></li>
                                            <li><Link to="#">Áo giáp - Quần giáp</Link></li>
                                            <li><Link to="#">Túi - Balo Givi</Link></li>
                                            <li><Link to="#">Tai nghe Bluetooth</Link></li>
                                            <li><Link to="#">Găng Tay</Link></li>
                                            <li><Link to="#">Giày Moto</Link></li>
                                            <li><Link to="#">Áo mưa Givi</Link></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <div className='col-md-3 part3'>
                                <h3>Install App</h3>
                                <br className='res-hide'/>
                                <p>From App Store or Google Play</p>

                                <div className='d-flex'>
                                    <Link to={''}><img src={appStore} width={150} alt="appStore"/></Link>
                                    <Link to={''}><img src={googlePlay} className='mx-2' width={150} alt="googlePlay"/></Link>
                                </div>

                                <br />

                                <p>Secured Payment Gateways</p>
                                <img src={paymentImage} alt="paymentImage"/>
                            </div>

                        </div>


                        <hr />



                        <div className='row lastStrip'>
                            <div className='col-md-3 part_1'>
                                <p>© 2022, Nest - HTML Ecommerce Template
                                    All rights reserved</p>
                            </div>

                            <div className='col-md-6 d-flex part_2'>
                                <div className='m-auto d-flex align-items-center phWrap'>
                                    <div className='phNo d-flex align-items-center mx-5'>
                                        <span><HeadphonesOutlinedIcon /></span>
                                        <div className='info ml-3'>
                                            <h3 className='text-g mb-0'>1900 - 888</h3>
                                            <p className='mb-0'>24/7 Support Center</p>
                                        </div>
                                    </div>

                                    <div className='phNo d-flex align-items-center  mx-5'>
                                        <span><HeadphonesOutlinedIcon /></span>
                                        <div className='info ml-3'>
                                            <h3 className='text-g mb-0'>1900 - 888</h3>
                                            <p className='mb-0'>24/7 Support Center</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div className='col-md-3 part3  part_3'>
                                <div className='d-flex align-items-center'>
                                    <h5>Follow Us</h5>
                                    <ul className='list list-inline'>
                                        <li className='list-inline-item'>
                                            <Link to={''}><FacebookOutlinedIcon /></Link>
                                        </li>
                                        <li className='list-inline-item'>
                                            <Link to={''}><TwitterIcon /></Link>
                                        </li>
                                        <li className='list-inline-item'>
                                            <Link to={''}><InstagramIcon /></Link>
                                        </li>
                                        <li className='list-inline-item'>
                                            <Link to={''}><YouTubeIcon /></Link>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </footer>


            </div>
        </>
    )
}

export default Footer;