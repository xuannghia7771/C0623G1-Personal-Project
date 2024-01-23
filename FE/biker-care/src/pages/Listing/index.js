import React, {useState, useEffect, useContext} from 'react';
import {Link, useParams} from 'react-router-dom';
import Product from '../../components/product';
import {Button} from '@mui/material';
import GridViewOutlinedIcon from '@mui/icons-material/GridViewOutlined';
import FilterListOutlinedIcon from '@mui/icons-material/FilterListOutlined';
import Sidebar from "../../components/Sidebar";
import SearchIcon from "@mui/icons-material/Search";
import Slider from "@mui/material/Slider";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import CompareArrowsOutlinedIcon from "@mui/icons-material/CompareArrowsOutlined";
import RemoveRedEyeOutlinedIcon from "@mui/icons-material/RemoveRedEyeOutlined";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import * as productService from "../../service/product/ProductService";
import HavingNoResult from "./HavingNoResult";
import {toast} from "react-toastify";
import useDebounce from "../../hooks/useDebounce";


const Listing = () => {
    const [isOpenDropDown, setIsOpenDropDown] = useState(false);
    const params = useParams();
    const [productList, setProductList] = useState([]);

    // các state dành cho Filter (bao gồm phân trang và sắp xếp theo giá)
    const [nameProduct, setNameProduct] = useState("");
    const [nameType, setNameType] = useState("");
    const [sortBy, setSortBy] = useState("idProduct");
    const [sort, setSort] = useState("");
    const [currentPage, setCurrentPage] = useState(0);
    const [limit, setLimit] = useState(8);
    const [totalPages, setTotalPages] = useState(0);
    const [totalElements, setTotalElements] = useState(0);

    // sử dụng hook tránh việc gọi api nhiều lần
    const debouncedSearchValue = useDebounce(nameProduct, 1500);

    // state set trạng thái có dữ liệu danh sách sản phẩm yêu cầu hay không hay không
    const [isNoContent, setIsNoContent] = useState(false);

    const pattern = /^[`~!@#$%^&*()=\[{\]}+;:|"'<,>.?]+$/;
    // const totalPages = Math.ceil(totalElements / pageSize);

    useEffect(() => {
        getListProduct();
    }, [sort, sortBy, nameType, currentPage, debouncedSearchValue]);

    const getListProduct = async () => {
        const result = await productService.getAllProductWithFilter(currentPage, limit, nameProduct, nameType, sort, sortBy);
        if (result.status === 204) {
            setIsNoContent(false);
        } else if (result.status === 200) {
            setProductList(result.data.content);
            setTotalPages(result.data.totalPages);
            setTotalElements(result.data.totalElements);
        }
    };

    // Sắp xếp theo giá - start
    const handleSortByPrice = (e) => {
        switch (e.target.value) {
            case "asc":
                setSortBy("productPrice");
                setSort("asc");
                break;
            case "desc":
                setSortBy("productPrice");
                setSort("desc");
                break;
            case "":
                setSortBy("idProduct");
                setSort("desc");
                break;
        }
    }
    // Sắp xếp theo giá - end


    // Tìm kiếm theo tên sản phẩm - start
    const handleNameSearch = (value) => {
        if (pattern.test(value)){
            toast.warn("Không nhập ký tự đặc biệt!");
        } else {
            setNameProduct(value);
        }
    };
    // Tìm kiếm theo tên sản phẩm - end


    // Lọc theo loại sản phẩm - start
    const handleProductTypeName = (e) => {
        setNameType(e);
        // this changes the scrolling behavior to "smooth"
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }
    // Lọc theo loại sản phẩm - end


    // Phân trang - start
    const handleNextPage = () => {
        setCurrentPage(currentPage + 1);
    };
    const handlePreviousPage = () => {
        setCurrentPage(currentPage - 1);
    };
    // Phân trang - end

    function convertVietnameseUnitPrice(e) {

        const floatPrice = parseFloat(e);
        const vietNamesePrice = floatPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});

        return vietNamesePrice;

    }

    // console.log(productList);

    return (
        <section className="listingPage">
            <div className="container-fluid">
                <div className="breadcrumb flex-column">
                    <h1>DANH SÁCH SẢN PHẨM</h1>
                    <ul className="list list-inline">
                        <li className="list-inline-item">
                            <Link to="/home">Trang chủ&nbsp;</Link>
                        </li>
                    </ul>
                </div>

                <div className="listingData">
                    <div className="row">
                        <div className="col-md-3 sidebarWrapper">
                            <div className="sidebar">
                                <div className="card border-0 shadow">
                                    <h3>Tìm kiếm</h3>

                                    <div className='search'>
                                        <input type='text'
                                               placeholder='Tên sản phẩm...'
                                               onChange={(name) => {
                                                   (handleNameSearch(name.target.value))
                                               }}
                                               // onKeyDown={(e) => {
                                               //     handleKeyDown(e)
                                               // }}
                                        />
                                        <SearchIcon className="searchIcon cursor"/>
                                    </div>

                                </div>

                                <div className="card border-0 shadow">
                                    <h3>Loại Sản Phẩm</h3>

                                    <div className="catList">
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Tất Cả Sản Phẩm</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Mũ Bảo Hiểm')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Mũ Bảo Hiểm</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Áo Giáp - Quần Giáp')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Áo Giáp - Quần Giáp</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Găng Tay')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Găng Tay</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Giày Moto')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Giày Moto</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Balo - Túi Givi')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Balo - Túi Givi</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Áo Mưa Givi')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Áo Mưa Givi</h4>
                                        </div>
                                        <div className="catItem d-flex align-items-center" onClick={()=>handleProductTypeName('Thùng Givi')}>
                                            <h4 className='mb-0 ml-3 mr-3 text-capitalize'>Thùng Givi</h4>
                                        </div>
                                    </div>
                                </div>

                                <div className="card border-0 shadow">
                                </div>
                            </div>
                        </div>

                        <div className="col-md-9 rightContent homeProducts pt-0">
                            <div className="topStrip d-flex align-items-center">
                                <p className="mb-0">Tìm thấy <span className="text-success">{totalElements}</span> sản phẩm phù hợp
                                </p>
                                <div className="ml-auto d-flex align-items-center">
                                    <div className="tab_ ml-3 position-relative">
                                        <select
                                            className="dropdownMenu"
                                            onChange={handleSortByPrice}
                                            >
                                            <option value="">Mặc định</option>
                                            <option value="asc">Giá: Tăng dần</option>
                                            <option value="desc">Giá: Giảm dần</option>
                                        </select>
                                    </div>
                                </div>
                            </div>


                            <div className="productRow pl-4 pr-3">
                                {
                                    productList.map((e, index) => (
                                        <div className="item" key={index}>

                                            <div className='productThumb'>
                                                <Link to={`/detail/${e.idProduct}`} style={{textDecoration: "none"}}>
                                                    <div className="imgWrapper">
                                                        <img
                                                            src={e.productImage}
                                                            alt="" className="w-100"/>
                                                    </div>

                                                    <div className="info">
                                                        <span className='d-block catName'>{e.productTypeName}</span>
                                                        <h4 className='title' title={e.productName}><Link
                                                            to={`/detail/${e.idProduct}`}>{e.productName.length > 25 ? e.productName.substring(0,25)+'...' : e.productName}</Link></h4>

                                                        <div className='d-flex align-items-center mt-3'>
                                                            <div className='d-flex align-items-center w-100'>
                                                                <span
                                                                    className='price text-g font-weight-bold'>{convertVietnameseUnitPrice(e.productPrice)}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Link>
                                                {/*<Button*/}
                                                {/*    className='w-100 transition mt-3'><ShoppingCartOutlinedIcon/>*/}
                                                {/*    Thêm vào giỏ hàng*/}
                                                {/*</Button>*/}
                                            </div>
                                        </div>
                                    ))
                                }
                            </div>

                            {
                                productList.length !== 0 && (
                                    <div className="row justify-content-center mt-5">
                                        <nav aria-label="Pagination" style={{width: "100%"}}>
                                            <ul className="pagination d-flex justify-content-center">
                                                <li className="page-item">
                                                    <button className="page-link"
                                                            disabled={currentPage + 1 <= 1}
                                                            onClick={() => handlePreviousPage()}>
                                                        &laquo;
                                                    </button>
                                                </li>
                                                <li className="page-item">
                                                    <button className="page-link" disabled>
                                                        {`${currentPage+1}/${totalPages}`}
                                                    </button>
                                                </li>
                                                <li className="page-item">
                                                    <button
                                                        className="page-link"
                                                        disabled={currentPage + 1 >= totalPages}
                                                        onClick={() => handleNextPage()}>
                                                        &raquo;
                                                    </button>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                )
                            }
                        </div>
                    </div>
                </div>


            </div>
        </section>

    )
}

export default Listing;