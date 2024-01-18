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

import Product from '../../components/product';
import axios from 'axios';
import {isAction} from "redux";
import Sidebar from "../../components/Sidebar";
import * as productService from "../../service/product/ProductService";


const DetailsPage = (props) => {
    const [zoomImage, setZoomImage] = useState("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2F17ZUtp9vEkeVg3ZypOBRA.jpg?alt=media&token=b02a0c5b-eedd-48ab-be09-ac3f7fd27fcc")

    const [bigImageSize, setBigImageSize] = useState([1500, 1500]);
    const [smlImageSize, setSmlImageSize] = useState([150, 150]);

    const [activeSize, setActiveSize] = useState(2);

    const [inputValue, setInputValue] = useState(1);

    const [activeTabs, setActiveTabs] = useState(0);

    const zoomSlider = useRef();

    const imgUrl = "";

    const {idProduct} = useParams();
    const [productDetail, setProductDetail] = useState({})
    const [listImageByProduct, setListImageByProduct] = useState([])
    const [selectedImage, setSelectedImage] = useState("")

    var settings = {
        dots: false,
        infinite: false,
        speed: 500,
        slidesToShow: 4,
        slidesToScroll: 1,
        fade: false,
        arrows: true
    };

    var related = {
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
    }, [idProduct]);

    const getProductByProductId = async () => {
        const res = await productService.getProductDetailById(idProduct);
        if (res.status === 200) {
            setProductDetail(res.data.product);
            setListImageByProduct(res.data.images);
            setSelectedImage(res.data.images[0].imagePath);
        } else {
            alert("Khong lay dc du lieu")
        }
    }

    // console.log(productDetail.productPrice.toLocaleString('vi', {style: 'currency', currency: 'VND'}));

    const chooseImage = (index) => {
        setSelectedImage(listImageByProduct[index].imagePath);
    }

    const goto = (url) => {
        setZoomImage(url);
    }

    const isActive = (index) => {
        setActiveSize(index);
    }

    const plus = () => {
        setInputValue(inputValue + 1);
    }

    const minus = () => {
        if (inputValue !== 1) {
            setInputValue(inputValue - 1)
        }
    }



    return (
        <section className="detailsPage">
            <div className="breadcrumbWrapper mb-4">
                <div className="container-fluid">
                    <ul className="breadcrumb breadcrumb2 mb-0">
                        <li><Link>Trang chủ</Link></li>
                        <li><Link>Sản phẩm </Link></li>
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
                                    src={`${selectedImage}?im=Resize=(${bigImageSize[0]},${bigImageSize[0]})`}
                                    width="100%"
                                    height="auto"
                                />
                        </div>


                        <Slider {...settings} className='zoomSlider' ref={zoomSlider}>
                            {
                                listImageByProduct &&
                                listImageByProduct.map((e, index) => (
                                    <div className="item" key={index}>
                                        <img
                                            src={`${e.imagePath}?im=Resize=(${smlImageSize[0]},${smlImageSize[1]})`}
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
                            <span className="text-g priceLarge">{productDetail.productPrice}</span>
                        </div>

                        <p>{productDetail.shortDescription}</p>

                        <div className="productSize d-flex align-items-center">
                            {
                                productDetail.productQuantity > 0 ?
                                <p style={{fontWeight: "bolder", color: "black"}}>Còn lại <span style={{color: "green", fontSize: 50 + 'px'}}>{productDetail.productQuantity}</span>&nbsp;sản phầm trong kho</p>
                                    : <p style={{fontWeight: "bolder", color: "black", padding: 20 + 'px', backgroundColor: "silver"}}>Hết hàng</p>
                            }
                        </div>

                        <div className="addCartSection pt-4 pb-4 d-flex align-items-center">
                            <div className="counterSec mr-3">
                                <input type="number" value={inputValue}/>
                                <span className="arrow plus" onClick={plus}><KeyboardArrowUpIcon/></span>
                                <span className="arrow minus" onClick={minus}><KeyboardArrowDownIcon/></span>
                            </div>

                            <Button className="btn-g btn-lg addtocartbtn"><ShoppingCartOutlinedIcon/>Thêm vào giỏ hàng</Button>
                        </div>


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


                <div className="relatedProducts pt-5 pb-4">
                    <h2 className="hd mb-0 mt-0">Sản phẩm liên quan</h2>
                    <br/>
                    <Slider {...related} className='prodSlider'>
                        <div className="item">
                            <Product/>
                        </div>
                        <div className="item">
                            <Product/>
                        </div>
                        <div className="item">
                            <Product/>
                        </div>
                        <div className="item">
                            <Product/>
                        </div>
                        <div className="item">
                            <Product/>
                        </div>

                    </Slider>
                </div>
            </div>


        </section>
    )
}


export default DetailsPage;

