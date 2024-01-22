import React, {useContext, useState, useRef, useEffect} from 'react';
import {Link, useParams} from 'react-router-dom';
import Rating from '@mui/material/Rating';
import InnerImageZoom from 'react-inner-image-zoom';
import 'react-inner-image-zoom/lib/InnerImageZoom/styles.css';
import Slider from "react-slick";
import KeyboardArrowUpIcon from '@mui/icons-material/KeyboardArrowUp';
import KeyboardArrowDownIcon from '@mui/icons-material/KeyboardArrowDown';
import {Button} from '@mui/material';
import ShoppingCartOutlinedIcon from '@mui/icons-material/ShoppingCartOutlined';
import FavoriteBorderOutlinedIcon from '@mui/icons-material/FavoriteBorderOutlined';
import CompareArrowsIcon from '@mui/icons-material/CompareArrows';
import "./productDetail.css";

import Product from '../../components/product';
import axios from 'axios';
import {isAction} from "redux";
import Sidebar from "../../components/Sidebar";
import * as productService from "../../service/product/ProductService";
import CompareArrowsOutlinedIcon from "@mui/icons-material/CompareArrowsOutlined";
import RemoveRedEyeOutlinedIcon from "@mui/icons-material/RemoveRedEyeOutlined";
import {getProductsByIdType} from "../../service/product/ProductService";


const DetailsPage = (props) => {
    const [zoomImage, setZoomImage] = useState("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2F17ZUtp9vEkeVg3ZypOBRA.jpg?alt=media&token=b02a0c5b-eedd-48ab-be09-ac3f7fd27fcc")


    const [activeSize, setActiveSize] = useState(2);

    const [inputValue, setInputValue] = useState(1);

    const [borderImg, setBorderImg] = useState(0);

    const zoomSlider = useRef();

    const {idProduct} = useParams();
    const [productDetail, setProductDetail] = useState({})
    const [listImageByProduct, setListImageByProduct] = useState([])
    const [selectedImage, setSelectedImage] = useState("")
    const [productByIdType, setProductByIdType] = useState([]);
    const [idTypeForRelatedProduct, setIdTypeForRelatedProduct] = useState(0);

    var settings = {
        dots: false,
        infinite: false,
        speed: 500,
        slidesToShow: 4,
        slidesToScroll: 1,
        fade: false,
        arrows: true
    };

    var relatedProducts = {
        dots: false,
        infinite: true,
        speed: 500,
        slidesToShow: 5,
        slidesToScroll: 1,
        fade: false,
        arrows: true
    };

    useEffect(() => {
        getProductByProductId();
        getProductByIdType();
    }, [idProduct, idTypeForRelatedProduct]);

    const getProductByProductId = async () => {
        const res = await productService.getProductDetailById(idProduct);
        if (res.status === 200) {
            setProductDetail(res.data.product);
            setListImageByProduct(res.data.images);
            setSelectedImage(res.data.images[0].imagePath);
            setIdTypeForRelatedProduct(res.data.product.idType);
            getProductByIdType();
        } else {
            alert("Khong lay dc du lieu")
        }
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }

    console.log(idTypeForRelatedProduct);
    const getProductByIdType = async () => {
        const res = await productService.getProductsByIdType(idTypeForRelatedProduct);
        setProductByIdType(res.data);
    }
    console.log(productByIdType);


    // console.log(selectedImage);
    // console.log(productDetail.productPrice.toLocaleString('vi', {style: 'currency', currency: 'VND'}));

    const chooseImage = (index) => {
        setSelectedImage(listImageByProduct[index].imagePath);
        setBorderImg(index);
    }

    const plus = () => {
        setInputValue(inputValue + 1);
    }

    const minus = () => {
        if (inputValue !== 1) {
            setInputValue(inputValue - 1)
        }
    }

    function convertVietnameseUnitPrice(e) {
        const floatPrice = parseFloat(e);
        const vietNamesePrice = floatPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});

        return vietNamesePrice;
    }

    // console.log(typeof productDetail.productPrice);
    // console.log(convertVietnameseUnitPrice(productDetail.productPrice));
    function convertVietnameseUnitPrice(e) {
        const floatPrice = parseFloat(e);
        const vietNamesePrice = floatPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});

        return vietNamesePrice;
    }

    return (
        <section className="detailsPage">
            <div className="breadcrumbWrapper mb-4">
                <div className="container-fluid">
                    <ul className="breadcrumb breadcrumb2 mb-0">
                        <li><Link to="/home">Trang chủ</Link></li>
                        <li><Link to="/listing">Sản phẩm </Link></li>
                        <li>{productDetail.productName}</li>
                    </ul>
                </div>
            </div>

            <div className="container detailsContainer pt-3 pb-3">
                <div className="row">

                    {/* productZoom code starts here */}
                    <div className="col-md-5">
                        <div className="productZoom">
                            <InnerImageZoom
                                zoomType="hover"
                                zoomScale={3}
                                src={selectedImage}
                                width="100%"
                                height="auto"
                            />
                        </div>


                        <Slider {...settings} className='zoomSlider' ref={zoomSlider}>
                            {
                                listImageByProduct &&
                                listImageByProduct.map((e, index) => (
                                    <div key={index}>
                                        <img
                                            src={e.imagePath}
                                            alt="productSlideImg"
                                            className="w-100"
                                            onClick={() => chooseImage(index)}/>
                                    </div>
                                ))
                            }
                        </Slider>
                    </div>
                    {/* productZoom code ends here */}

                    {/* product info starts here */}
                    <div className="col-md-7 productInfo">
                        <h1>{productDetail.productName}</h1>
                        <div className="d-flex align-items-center mb-4 mt-3">
                            {/*<Rating name="half-rating-read" defaultValue={3.5} precision={0.5} readOnly/>*/}
                            {/*<span className="text-light ml-2"> 32 reviews</span>*/}
                        </div>

                        <div className="priceSec d-flex align-items-center mb-3">
                            <span
                                className="text-g priceLarge">{convertVietnameseUnitPrice(productDetail.productPrice)}</span>
                        </div>

                        <p>{productDetail.shortDescription}</p>

                        <div className="productSize d-flex align-items-center">
                            {
                                productDetail.productQuantity > 0 ?
                                    <p style={{fontWeight: "bolder", color: "black"}}>Còn <span
                                        className="text-g">{productDetail.productQuantity}</span> sản phẩm</p>
                                    : <p style={{
                                        fontWeight: "bolder",
                                        color: "black",
                                        padding: 20 + 'px',
                                        backgroundColor: "silver"
                                    }}>Hết hàng</p>
                            }
                        </div>

                        <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                            <button className="btn btn-primary" style={{marginRight: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> -</button>
                            <input type="number" className="quantity-input"/>
                            <button className="btn btn-primary" style={{marginLeft: 10 + "px", backgroundColor: "#3bb77e", outline: 'none'}}> +</button>
                        </div>

                        <Button className="btn-g btn-lg addtocartbtn"><ShoppingCartOutlinedIcon/>Thêm vào giỏ
                            hàng</Button>
                    </div>
                    {/* product info ends here */}
                </div>

                <div className="card mt-5 p-5 detailsPageTabs">
                    <div className='customTabs'>
                        <ul className="list list-inline">
                            <li className="list-inline-item">
                                <Button>Mô Tả</Button>
                            </li>
                        </ul>

                        <br/>
                        <div className="tabContent">
                            {productDetail.productDescription}
                        </div>
                    </div>
                </div>


                <div className="relatedProducts homeProductsRow2  pt-5 pb-4">
                    <h2 className="hd mb-0 mt-0">Sản phẩm liên quan</h2>
                    <br/>
                    <Slider {...relatedProducts} className='prodSlider'>
                        {
                            productByIdType.length !== 0 &&
                            productByIdType.map((e, index) => (
                                <div className="item" key={index}>
                                    <Link to={`/detail/${e.idProduct}`} style={{textDecoration: "none"}}>
                                        <div className='productThumb'>
                                            <div className="imgWrapper">
                                                <img src={e.productImage} alt="" className="w-100"/>
                                            </div>

                                            <div className="info">
                                                {/*<span className='d-block catName'>brand</span>*/}
                                                <h4 className='title' title={e.productName}><Link
                                                    to={`/detail/${e.idProduct}`}>{e.productName.length > 25 ? e.productName.substring(0, 25) + '...' : e.productName}</Link>
                                                </h4>

                                                <div className='d-flex align-items-center mt-3'>
                                                    <div className='d-flex align-items-center w-100'>
                                                    <span className='price text-g font-weight-bold'>
                                                        {convertVietnameseUnitPrice(e.productPrice)} </span>
                                                    </div>
                                                </div>

                                                {/*<Button className='w-100 transition mt-3'><ShoppingCartOutlinedIcon />*/}
                                                {/*    Add*/}
                                                {/*</Button>*/}
                                            </div>
                                        </div>
                                    </Link>
                                </div>
                            ))
                        }
                    </Slider>
                </div>
            </div>


        </section>
    )
}


export default DetailsPage;

