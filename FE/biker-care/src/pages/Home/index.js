import React, {useState, useEffect, useRef, useContext} from 'react';
import SliderBanner from './slider/index';

import './style.css';
import Product from '../../components/product';
import Banner4 from '../../assets/images/banner4.jpg';

import Slider from "react-slick";
import axios from 'axios';
import {Link} from "react-router-dom";
import * as userService from "../../service/product/ProductService";
import {getAllProduct} from "../../service/product/ProductService";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import CompareArrowsOutlinedIcon from "@mui/icons-material/CompareArrowsOutlined";
import RemoveRedEyeOutlinedIcon from "@mui/icons-material/RemoveRedEyeOutlined";
import {Button} from "@mui/material";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";

const Home = (props) => {

    const [activeTabIndex, setactiveTabIndex] = useState(0);
    const [activeTabData, setActiveTabData] = useState([]);

    const [bestSells, setBestSells] = useState([]);
    const [isLoadingProducts, setIsLoadingProducts] = useState(false);

    const productRow = useRef();

    const [allProduct, setAllProduct] = useState([]);

    const [nameSearch, setNameSearch] = useState("")


    var settings = {
        dots: false,
        infinite: true,
        speed: 500,
        slidesToShow: 3,
        slidesToScroll: 1,
        fade: false,
        arrows: true,
    };

    useEffect(() => {
        getAllProduct();
    }, []);

    const getAllProduct = async () => {
        try {
            const result = await userService.getAllProduct(nameSearch);
            // console.log(result.data)
            if (result.status === 200) {
                setAllProduct(result.data);
            }
        } catch (e) {
            alert("Không tìm thấy dữ liệu trả về. Lỗi: " + e.error);
        }
    }


    return (
        <div style={{display: 'block'}}>
            <SliderBanner/>
            {/*<Banners />*/}


            <section className='homeProducts homeProductWrapper'>
                <div className='container-fluid'>
                    <div className='d-flex align-items-center homeProductsTitleWrap'>
                        <h2 className='hd mb-0 mt-0 res-full'>Sản phẩm mới nhất</h2>
                    </div>

                    <div className="row productRow">
                        {
                            allProduct !== undefined ?
                            allProduct?.map((e) => (
                                <div className="item">
                                    <div className='productThumb' key={e.idProduct}>
                                        <Link to={`/detail/${e.idProduct}`} style={{textDecoration: "none"}}>
                                            <div className="imgWrapper">
                                                <img
                                                    src={e.productImage}
                                                    alt="" className="w-100"/>
                                            </div>

                                            <div className="info">
                                                {/*{selectedItem.length>14 ? selectedItem.substr(0,14)+'...' :  selectedItem}*/}
                                                <h4 className='title' title={e.productName}><Link to={`/detail/${e.idProduct}`}>{e.productName.length > 25 ? e.productName.substring(0,25)+'...' : e.productName}</Link></h4>

                                                <div className='d-flex align-items-center mt-3'>
                                                    <div className='d-flex align-items-center w-100'>
                                                    <span className='price text-g font-weight-bold'>
                                                        {e.productPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'})} </span>
                                                    </div>
                                                </div>

                                                {/*<Button className='w-100 transition mt-3'><ShoppingCartOutlinedIcon/>*/}
                                                {/*    Thêm vào giỏ hàng*/}
                                                {/*</Button>*/}
                                            </div>
                                        </Link>
                                    </div>
                                </div>
                            )) : (<div><p>Dữ liệu chưa được đưa vào</p></div>)
                        }
                    </div>

                    <div className="viewMore">
                        <Link to="/listing">Xem thêm</Link>
                    </div>
                </div>
            </section>


        </div>
    )
}

export default Home;






