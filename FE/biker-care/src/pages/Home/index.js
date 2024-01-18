import React, {useState, useEffect, useRef, useContext} from 'react';
import SliderBanner from './slider/index';

import './style.css';
import Product from '../../components/product';
import Banner4 from '../../assets/images/banner4.jpg';

import Slider from "react-slick";
import TopProducts from './TopProducts';
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

    const pattern = /^[a-zA-Z0-9\sàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ]+$/;

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
    }, [nameSearch]);

    const getAllProduct = async () => {
        const result = await userService.getAllProduct(nameSearch);
        // console.log(result.data)
        setAllProduct(result.data);
    }

    const handleSearch = () => {
        console.log(nameSearch)
    }

    const handleKeyDown = (event) => {
        if (event.key === 'Enter') {
            event.preventDefault();
            handleSearch();
        }
    }

    return (
        <div style={{display: 'block'}}>
            <SliderBanner/>
            {/*<Banners />*/}


            <section className='homeProducts homeProductWrapper'>
                <div className='container-fluid'>
                    <div className='d-flex align-items-center homeProductsTitleWrap'>
                        <div className='selectDropWrapper cursor position-relative'>
                            <div className='selectDrop'>
                                <div className='searchField'>
                                    <input type='text'
                                           placeholder='Tên sản phẩm ...'
                                           onChange={(e) => setNameSearch(e.target.value)}
                                    />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="row productRow">
                        {
                            allProduct &&
                            allProduct?.map((e) => (
                                <div className="item">
                                    <div className='productThumb' key={e.idProduct}>
                                        <div className="imgWrapper">
                                            <img
                                                src={e.productImage}
                                                alt="" className="w-100"/>

                                            <div className='overlay transition'>
                                                <ul className='list list-inline mb-0'>
                                                    <li className='list-inline-item'>
                                                        <a className='cursor' tooltip="Add to Wishlist">
                                                            <FavoriteBorderOutlinedIcon/>
                                                        </a>
                                                    </li>
                                                    <li className='list-inline-item'>
                                                        <a className='cursor' tooltip="Compare">
                                                            <CompareArrowsOutlinedIcon/>
                                                        </a>
                                                    </li>
                                                    <li className='list-inline-item'>
                                                        <a className='cursor' tooltip="Quick View">
                                                            <RemoveRedEyeOutlinedIcon/>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div className="info">
                                            <h4 className='title'><Link to="/detail">{e.productName}</Link></h4>

                                            <div className='d-flex align-items-center mt-3'>
                                                <div className='d-flex align-items-center w-100'>
                                                    <span className='price text-g font-weight-bold'>
                                                        {e.productPrice.toLocaleString('vi', {style: 'currency', currency: 'VND'})} </span>
                                                </div>
                                            </div>

                                            {/*<Button className='w-100 transition mt-3'><ShoppingCartOutlinedIcon/>*/}
                                            {/*    Thêm vào giỏ hàng*/}
                                            {/*</Button>*/}
                                        </div>
                                    </div>
                                </div>
                            ))
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






