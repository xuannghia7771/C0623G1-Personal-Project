import React, {useState, useEffect, useContext} from 'react';
import {Link, useParams} from 'react-router-dom';
import Product from '../../components/product';
import {Button} from '@mui/material';
import GridViewOutlinedIcon from '@mui/icons-material/GridViewOutlined';
import FilterListOutlinedIcon from '@mui/icons-material/FilterListOutlined';
import Sidebar from "../../components/Sidebar";


const Listing = () => {
    const [isOpenDropDown, setIsOpenDropDown] = useState(false);
    const [isOpenDropDown2, setIsOpenDropDown2] = useState(false);

    return (
        <section className="listingPage">
            <div className="container-fluid">
                <div className="breadcrumb flex-column">
                    <h1>Snack</h1>
                    <ul className="list list-inline">
                        <li className="list-inline-item">
                            <Link to={''}>Home</Link>
                        </li>
                        <li className="list-inline-item">
                            <Link to={''}>Shop</Link>
                        </li>
                        <li className="list-inline-item">
                            <Link to={''}>Snack</Link>
                        </li>
                    </ul>
                </div>

                <div className="listingData">
                    <div className="row">
                        <div className="col-md-3 sidebarWrapper">
                            <Sidebar/>
                        </div>

                        <div className="col-md-9 rightContent homeProducts pt-0">


                            <div className="topStrip d-flex align-items-center">
                                <p className="mb-0">Tìm thấy <span className="text-success">29</span> sản phẩm!</p>
                                <div className="ml-auto d-flex align-items-center">
                                    <div className="tab_ position-relative">
                                        <Button className='btn_' onClick={() => setIsOpenDropDown(!isOpenDropDown)}><GridViewOutlinedIcon/>&nbsp;Show: 50</Button>
                                        {
                                            isOpenDropDown !== false &&
                                            <ul className="dropdownMenu">
                                                <li><Button className="align-items-center">50</Button></li>
                                                <li><Button className="align-items-center">100</Button></li>
                                                <li><Button className="align-items-center">150</Button></li>
                                                <li><Button className="align-items-center">2000</Button></li>
                                                <li><Button className="align-items-center">All</Button></li>
                                            </ul>
                                        }
                                    </div>
                                    <div className="tab_ ml-3 position-relative">
                                        <Button className="btn_" onClick={() => setIsOpenDropDown2(!isOpenDropDown2)}><FilterListOutlinedIcon/>&nbsp;by: Featured</Button>
                                        {
                                            isOpenDropDown2 !== false &&
                                            <ul className="dropdownMenu">
                                                <li><Button className="align-items-center">Featured</Button></li>
                                                <li><Button className="align-items-center">Giá: Tăng dần</Button></li>
                                                <li><Button className="align-items-center">Giá: Giảm dần</Button></li>
                                            </ul>
                                        }
                                    </div>
                                </div>
                            </div>


                            <div className="productRow pl-4 pr-3">
                                <div className="item">
                                    <Product tag="hot"/>
                                </div>
                                <div className="item">
                                    <Product tag="new"/>
                                </div>
                                <div className="item">
                                    <Product tag="new"/>
                                </div>
                                <div className="item">
                                    <Product tag="new"/>
                                </div>
                                <div className="item">
                                    <Product tag="new"/>
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


                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </section>

    )
}

export default Listing;